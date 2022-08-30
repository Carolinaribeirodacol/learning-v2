#include <iostream>
#include <stdlib.h>
using namespace std;
#define max 200

int soma_linha[max], soma_coluna[max];
int soma_DP, soma_DS;

int main(int argc, char *argv[])
{
	setlocale(LC_ALL, "Portuguese");
	
	int tam, i = 0, j = 0, matriz[max][max];
	
	cout << "Digite a dimens�o do quadrado (M�ximo 200): ";
	cin >> tam;
	
	for(i = 0; i < tam; i++){
		for(j = 0; j < tam; j++){
			system("cls");
			cout << "Linha: " << i << "  Coluna: " << j << endl;
			cout << "N�mero: ";
			cin >> matriz[i][j];
		}
	}
	
	system("cls");
	
	cout << "-----------------------------------" << endl << endl;
	cout << "          Quadrado M�gico          " << endl << endl;
	
	cout << "\t\t";
	for(i = 0; i < tam; i++){
		for(j = 0; j < tam; j++){
			cout << matriz[i][j] << " ";
		}
		cout << endl;
		cout << "\t\t";
	}
	cout << "\n------------------------------------" << endl << endl;
	
	for(i = 0; i < tam; i++){
		for(j = 0; j < tam; j++){
			if(i == j)
				soma_DP += matriz[i][j];
			if(i == tam - 1 - j)
				soma_DS += matriz[i][j];
			
			soma_linha[i] += matriz[i][j];
			soma_coluna[i] += matriz[j][i];
			
			if(j == tam-1){
				cout << "\nSoma da linha " << i << " = " << soma_linha[i] << endl << endl;
				cout << "\nSoma da coluna " << i << " = " << soma_coluna[i] << endl << endl;
				cout << "------------------------------------" << endl << endl;
			}
		}
	}
	
	cout << "Soma da Diagonal Principal = " << soma_DP << endl;
	cout << "Soma da Diagonal Secund�ria = " << soma_DS << endl << endl;
	
	if(soma_linha[tam] == soma_coluna[tam] && soma_DP == soma_DS){
		cout << "\n� um quadrado m�gico!!!\n";
	}	
	else
		cout << "\nN�o � um quadrado m�gico!!!\n";
	
	
	return 0;
}