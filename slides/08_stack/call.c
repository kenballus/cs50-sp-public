int f2(int i) {
    return i * 2;
}

int f3(int i) {
    return i / 2;
}

int f1(int i) {
    int f2_result = f2(i);
    int f3_result = f3(i);
    return f1_result + f2_result;
}

int main(void) {
    return f1(22);
}
