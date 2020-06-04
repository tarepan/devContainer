import { pipe } from "fp-ts/lib/pipeable";

setInterval(() => pipe(`hello from devContainer with ${process.env.pandaenv}`, console.log), 1000)
