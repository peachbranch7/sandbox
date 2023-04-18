---
to: <%= abs_path %>/<%= component_name %>.stories.tsx
---

import { ComponentMeta, ComponentStoryObj } from '@storybook/react'
import { <%= component_name %> } from ".";

export default { component: <%= component_name %> } as ComponentMeta<typeof <%= component_name %>>

export const Default: ComponentStoryObj<typeof <%= component_name %>> = {
  args: {},
}
