# Builder

This directory contains images designed for multistage python builds,
to be used as the builder image. They contain extra helpers such as Pipenv.
These images are quite heavy and thus should not be used for production.

Since they contain more apps, these images are also convenient for local
development debugging. Locally the docker layers are cached, thus the increased
size does not contribute much. However circleCI does not cache docker layers,
and thus the entire image is reloaded each time.