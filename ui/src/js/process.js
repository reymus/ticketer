define(["./services/client"], function(client) {
  "use strict";
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
  };
});