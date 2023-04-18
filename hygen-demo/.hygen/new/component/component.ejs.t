---
to: <%= abs_path %>/index.tsx
---
import { FC } from 'react'
import styles from './<%= h.changeCase.lower(component_name) %>.module.scss'

type Props = unknown

export const <%= h.changeCase.pascal(component_name) %> = () => (
  <Presenter />
)

const Presenter: FC<Props> = (props) => {
  return <Component {...props} />
}