import Express from "express";
import morgan from "morgan";
import ExpressPeerServer from "peerjs";

const app = Express();

app.use(morgan("dev"));

app.get("/", (req, res,next) => res.json({ Hello: "Some one" }));


const peerServer = new ExpressPeerServer(app, {
    path: "/call",
});

app.use("/peerjs", peerServer);

const port= Number(process.env.PORT || 9000)
app.listen(port,'0.0.0.0',()=>{
    console.log(`Server is listening on http://localhost:${port}`)
})
