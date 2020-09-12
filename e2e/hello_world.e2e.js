import { expect } from "chai";
import testUtils from "./utils";

describe("application launch", function() {
  beforeEach(testUtils.beforeEach);
  afterEach(testUtils.afterEach);

  // TODO: Learn about Spectron and Mocha
  // it("renders an iframe after launch", function() {
  //   return this.app.client
  //     .waitUntilWindowLoaded()
  //     .$("iframe")
  //     .getAttribute("src")
  //     .should.equal("http://localhost:4300");
  // });

  // it("shows hello world text on screen after launch", function() {
  //   return this.app.client.getText("#greet").then(text => {
  //     expect(text).to.equal("Hello World!");
  //   });
  // });
});
