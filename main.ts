const port = Number(Deno.env.get("PORT") ?? 3000);
Deno.serve({ port, hostname: "0.0.0.0" }, () =>
  new Response("<!doctype html><title>DCMS fixture</title><h1>dcms-stack-deno OK</h1>",
    { headers: { "content-type": "text/html" } }));
