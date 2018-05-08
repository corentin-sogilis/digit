# Sogilis
# 4 avenue du Doyen Louis Weil
# 38000 Grenoble

TARGET = afficheur

$(TARGET): afficheur.adb digit.adb digit.ads
	gnatmake -g $(TARGET)

clean :
	rm -rf *.o *.ali $(TARGET) b\~*
