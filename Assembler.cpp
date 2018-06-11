/*
* C++语言实现MIPS指令代码转换成二进制机器代码的汇编器
*/
#include <iostream>
#include <fstream>
#include <cstring>
#include <cctype>
#include <algorithm>
#include <map>

using namespace std;
map<string, string> OpMap;

//初始化Op字符串与二进制数据的Map关系
void Initial(){
	OpMap.insert(pair<string, string>("add", "000000"));
	OpMap.insert(pair<string, string>("sub", "000001"));
	OpMap.insert(pair<string, string>("addi", "000010"));
	OpMap.insert(pair<string, string>("or", "010000"));
	OpMap.insert(pair<string, string>("ori", "010010"));
	OpMap.insert(pair<string, string>("and", "010001"));
	OpMap.insert(pair<string, string>("sll", "011000"));
	OpMap.insert(pair<string, string>("beq", "110100"));
	OpMap.insert(pair<string, string>("jal", "111010"));
	OpMap.insert(pair<string, string>("slt", "100110"));
	OpMap.insert(pair<string, string>("sltiu", "100111"));
	OpMap.insert(pair<string, string>("bltz", "110110"));
	OpMap.insert(pair<string, string>("j", "111000"));
	OpMap.insert(pair<string, string>("sw", "110000"));
	OpMap.insert(pair<string, string>("lw", "110001"));
	OpMap.insert(pair<string, string>("jr", "111001"));
}
//输入十进制char数组，返回二进制int数组
int* DecToBinary(char* temp, int mode){
	int* result = NULL;
	int num = atoi(temp), flag = 0;
	switch(mode){
		case 1:
			result = new int[5];
			for(int i=4;i>=0;i--){
				result[i] = num%2;
				num /= 2;
			}
			break;
		case 0:
			if(num<0) {
				num = -num - 1;
				flag = 1;
			}
			result = new int[16];
			for(int i=15;i>=0;i--){
				result[i] = num%2;
				num /= 2;
			}
			if(flag){
				for(int i=0;i<=15;i++)
					result[i] = 1 - result[i];
			}
			break;
		case -1:
			sscanf(temp, "%x", &num);
			result = new int[26];
			num /= 4;
			for(int i=25;i>=0;i--){
				result[i] = num%2;
				num /= 2;
			}
	}
	return result;
}
//读取R型指令：Op rd, rs, rt
int* readRtype(string str){
	int* result = new int[32];
	for(int i=0;i<32;i++)
		result[i] = 0;
	int* rd = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
	int* rs = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
	int* rt = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
	for(int i=0;i<32;i++){
		if(i<6) result[i] = str[i] - '0';
		else if(i<11) result[i] = rs[i-6];
		else if(i<16) result[i] = rt[i-11];
		else if(i>=16&&i<21) result[i] = rd[i-16];
	}
	delete[] rd;
	delete[] rs;
	delete[] rt;
	return result;
}
//读取I型指令：Op rt, rs, immediate 或者 Op rt, immediate(rs)
int* readItype(string str, bool mode){
	int* result = new int[32];
	for(int i=0;i<32;i++)
		result[i] = 0;
	int* rt = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
	char* temp1 = strtok(NULL, ", $ (), ()"), *temp2 = strtok(NULL, ", $ (), ()");
	int* rs = mode ? DecToBinary(temp1, 1) : DecToBinary(temp2, 1);
	int* immediate = mode ? DecToBinary(temp2, 0) : DecToBinary(temp1, 0);
	for(int i=0;i<32;i++){
		if(i<6) result[i] = str[i] - '0';
		else if(i<11) result[i] = rs[i-6];
		else if(i<16) result[i] = rt[i-11];
		else result[i] = immediate[i-16];
	}
	delete[] rs;
	delete[] rt;
	delete[] immediate;
	return result;
}
//读取J型指令：Op addr
int* readJtype(string str){
	int* result = new int[32];
	for(int i=0;i<32;i++)
		result[i] = 0;
	int* addr = DecToBinary(strtok(NULL, ", $ (), ()"), -1);
	for(int i=0;i<32;i++){
		if(i<6) result[i] = str[i] - '0';
		else result[i] = addr[i-6];
	}
	delete[] addr;
	return result;
}
/*
* 将MIPS指令读取转换为二进制
*/
int* readInstruction(string input){
	transform(input.begin(), input.end(), input.begin(), ::tolower);
	int* result = new int[32];
	for(int i=0;i<32;i++)
		result[i] = 0;
	string str = OpMap[input];
	if(input == "add" || input == "sub" || input == "or"
		|| input == "and" || input == "slt"){
			result = readRtype(str);
	}else if(input == "addi" || input == "ori" || input == "sltiu"
		|| input == "beq"){
			result = readItype(str, true);
	}else if(input == "sll"){
			int* rd = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
			int* rt = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
			int* sa = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
			for(int i=0;i<32;i++){
				if(i<6) result[i] = str[i] - '0';
				else if(i>=11&&i<16) result[i] = rt[i-11];
				else if(i>=16&&i<21) result[i] = rd[i-16];
				else if(i>=21&&i<26) result[i] = sa[i-21];
			}
			delete[] rd; delete [] rt; delete[] sa;
	}else if(input == "sw" || input == "lw"){
			result = readItype(str, false);
	}else if(input == "bltz"){
			int* rs = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
			int* immediate = DecToBinary(strtok(NULL, ", $ (), ()"), 0);
			for(int i=0;i<32;i++){
				if(i<6) result[i] = str[i] - '0';
				else if(i>=6&&i<11) result[i] = rs[i-6];
				else if(i>=16) result[i] = immediate[i-16];
			}
			delete[] rs; delete[] immediate;
	}else if(input == "j" || input == "jal"){
			result = readJtype(str);
	}else if(input == "jr"){
			int* rs = DecToBinary(strtok(NULL, ", $ (), ()"), 1);
			for(int i=0;i<11;i++){
				if(i<6) result[i] = str[i] - '0';
				else result[i] = rs[i-6];
			}
			delete[] rs;
	}else if(input == "halt"){
			for(int i=0;i<6;i++){
				result[i] = 1;
			}
	}
	return result;
}

/*
* Main函数
*/
int main(){
	Initial();
	int bin[32][32];  //存放二进制数据的数组
	for(int i=0;i<32;i++){ //初始化
		for(int j=0;j<32;j++)
			bin[i][j] = 0;
	}
	ifstream file;
	file.open("MIPS_Instructions.txt", ios_base::in);
	if(!file){
		cout << "File does not exist !" << endl;
		exit(-1);
	}
	char* temp;
	char buffer[100];
	string instruction;
	int count = 0;
	//读取MIPS程序段并转换为二进制数据
	while(!file.eof()){
		file.getline(buffer, 100);
		if(buffer[0] != 0){
			temp = strtok(buffer, ", $ (), ()");
			instruction = temp;
			int* result = readInstruction(instruction);
			for(int i=0;i<32;i++){
				bin[count][i] = result[i];
			}
			delete[] result;
		}
		count++;
	}
	//将二进制数据写入新文件
	ofstream out;
	out.open("Binary_Instructions.txt", ios::out|ios::trunc);
	if(out.is_open()){
		for(int i=0;i<count;i++){
			for(int j=0;j<32;j++){
				out << bin[i][j];
				if((j+1)%8==0&&j!=31)
					out << ' ';
			}
			if(i!=count-1) out << '\n';
		}
	}
	cout << "Compile Success!" << endl;
	out.close();
	exit(0);
}