#include <iostream>
#include <time.h>
#include <unistd.h>

using namespace std;

int main() {
	time_t t = time(NULL);
	struct tm tm = *localtime(&t);
	string image = "xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /opt/xfce-dynamic-wallpaper/backgrounds/" + to_string(tm.tm_hour) + ".jpg";
	system(image.c_str());
	sleep(((60 - tm.tm_min) * 60) - tm.tm_sec);
	return main();
}