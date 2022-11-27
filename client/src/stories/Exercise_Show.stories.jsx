import React from "react";
import Show from "../components/Exercise/Show";
import { library } from '@fortawesome/fontawesome-svg-core'

export default {
  component: Show,
  title: "Exercise - Show"
}

const Template = args => <Show {...args} />

export const NoGifSets = Template.bind({});
NoGifSets.args = {
  name: "Barbell Curl",
  category: "Arms",
  reps: 8,
  sets: 4, 
  note: "Please choose a weight such that you are close to failure at the end of each set"
}

export const NoGifTimed = Template.bind({});
NoGifTimed.args = {
    name: "Treadmill Run",
    category: "Cardio",
    duration: 305,
    note: "Please start on a gentle incline and run at a decent pace, trying to go for the full 5 minutes"
}

export const GifSets = Template.bind({});
GifSets.args = {
  name: "Barbell Curl",
  category: "Arms",
  reps: 8,
  sets: 4, 
  gif_url: "http://d205bpvrqc9yn1.cloudfront.net/0031.gif",
  note: "Please choose a weight such that you are close to failure at the end of each set"
}

export const GifTimed = Template.bind({});
GifTimed.args = {
  name: "Treadmill Run",
  category: "Cardio",
  duration: 305,
  gif_url: "http://d205bpvrqc9yn1.cloudfront.net/3666.gif",
  note: "Please start on a gentle incline and run at a decent pace, trying to go for the full 5 minutes"
}

export const WithoutNoteTimed = Template.bind({});
WithoutNoteTimed.args = {
  name: "Treadmill Run",
  category: "Cardio",
  duration: 300,
  gif_url: "http://d205bpvrqc9yn1.cloudfront.net/3666.gif",
}

export const WithoutNoteSets = Template.bind({});
WithoutNoteSets.args = {
  name: "Barbell Curl",
  category: "Arms",
  reps: 8,
  sets: 4, 
  gif_url: "http://d205bpvrqc9yn1.cloudfront.net/0031.gif",
}
