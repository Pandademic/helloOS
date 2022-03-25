dev:
  docker build -t helloOS .
  docker run -it helloOS
get-bin:
  docker cp /osdev/helloos ~
run:
