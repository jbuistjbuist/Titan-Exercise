import React from 'react'
import { action } from "@storybook/addon-actions"
import SmallButton from '../components/buttons_toggles/SmallButton';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { library } from '@fortawesome/fontawesome-svg-core'
import { faFloppyDisk, faFilePen, faTrash, faCirclePlus, faXmark } from '@fortawesome/free-solid-svg-icons'

library.add( faFloppyDisk, faFilePen, faTrash, faCirclePlus, faXmark )

export default {
  component: SmallButton,
  title: 'Small Button'
}

const Template = args => <SmallButton {...args} />

export const Edit = Template.bind({});
Edit.args = {
    onClick: action("button clicked"),
    type: "edit"
}

export const Delete = Template.bind({});
Delete.args = {
    onClick: action("button clicked"),
    type: "delete"
}

export const Cancel = Template.bind({});
Cancel.args = {
    onClick: action("button clicked"),
    type: "cancel"
}

export const Save = Template.bind({});
Save.args = {
    onClick: action("button clicked"),
    type: "save"
}

export const Add = Template.bind({});
Add.args = {
    onClick: action("button clicked"),
    type: "add"
}

