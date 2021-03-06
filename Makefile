alss: alss.o pid_controller.o
	g++ alss.o pid_controller.o -o alss -lboost_system

alss.o: src/alss.cpp pid/pid_controller.h
	g++ -c src/alss.cpp -lboost_system -std=c++11

pid_controller.o: pid/pid_controller.cpp pid/pid_controller.h
	g++ -c pid/pid_controller.cpp -lboost_system -std=c++11

clean:
	rm ./*.o hello