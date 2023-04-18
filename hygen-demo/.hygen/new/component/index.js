module.exports = {
  prompt: ({ inquirer }) => {
    const questions = [
      {
        type: 'select',
        name: 'category',
        message: 'Which dir?',
        choices: ['ui-elements', 'ui-parts']
      },
      {
        type: 'input',
        name: 'component_name',
        message: 'What is the name of component?'
      },
      {
        type: 'confirm',
        name: 'have_style',
        message: 'Is it have style?',
        default: true
      },
      {
        type: 'confirm',
        name: 'have_type',
        message: 'Is it have type?',
        default: true
      },
    ]
    return inquirer
      .prompt(questions)
      .then(answers => {
        const { category, component_name } = answers

        const path = `${category}/${component_name}`
        const abs_path = `src/components/${path}`
        return { ...answers, path, abs_path }
      })
  }
}