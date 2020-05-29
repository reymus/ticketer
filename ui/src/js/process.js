define(["./services/client"], function(client) {
  let data = null;
  return {
    getProcess: async () => {
      if (data) {
        return Promise.resolve(data);
      } else {
        data = await client.invoke("Process.GetProcessData");
        return data;
      }
    }
  }
});