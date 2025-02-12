numerator_TF1 = [-3.332e11, -5.925e17, -2.522e23, 1.14e25, 1.389e30];
denominator_TF1 = [1, 6.32e6, 1.147e13, 7.179e18, 9.589e23, 4.018e25, 1.026e29];
outputtoinput= tf(numerator_TF1, denominator_TF1)
numerator = [-2.304e5, -2.058e12, -3.164e18, -1.435e24, -1.525e29, 3.875e32];
denominator = [1, 6.32e6, 1.147e13, 7.179e18, 9.589e23, 4.018e25, 1.026e29];
outputtocontrolinput = tf(numerator, denominator)
bode(outputtocontrolinput)
grid on;