---
to: <%= abs_path %>/<%= component_name %>.test.tsx
---
import { <%= component_name %> } from ".";

describe("<%= component_name %>", () => {
  it("Snap Shot", () => {
   expect(<%= component_name %>).toMatchSnapshot();
  });
});