extern int factorial_efficient(int n);
int factorial_inefficient(int n) {
	int counter = n;
	int result = 1;
	while (counter > 1) {
		result = result * counter;
		counter--;
	}
	return result;
}



int main() {
	return factorial_efficient(5);
}
