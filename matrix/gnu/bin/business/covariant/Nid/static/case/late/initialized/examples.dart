bool b = true;
int i = (() => (b = !b) ? (i = 10) : i + 1)();
void main() {
print(i); // ’11’.
}