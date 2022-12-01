import React, { useState } from "react";
import validateExerciseEdit from "../../../helpers/validateExerciseEdit";
import useForm from "../../../hooks/useForm";
import SmallButton from "../../buttons_toggles/SmallButton";
import Exercise from "./Exercise";
import Rest from "./Rest";

export default function Form(props) {
  const {
    exercise_id,
    workout_exercise_id,
    name,
    category,
    duration,
    reps,
    sets,
    gif_url,
    note,
    onCancel,
    onReorder,
    handleWorkoutEdit
  } = { ...props };

  console.log(handleWorkoutEdit)

  const formFunctions = useForm({
    reps,
    sets,
    duration,
    note,
    workout_exercise_id,
    exercise_id,
    name
  });
  const { data } = formFunctions;

  const [timed, setTimed] = useState(duration ? true : false);
  const [error, setError] = useState(null);

  const handleTimed = () => {
    setError(null)
    setTimed(prev => !prev)
  }

  const exerciseProps =
    exercise_id === 1
      ? null
      : {
          name,
          category,
          gif_url,
          ...formFunctions,
          timed,
          handleTimed,
          error
        };

  const restProps =
    exercise_id !== 1
      ? null
      : {
          timed,
          ...formFunctions,
          handleTimed,
          error
        };

  const handleSubmit = () => {
    if (validateExerciseEdit(data, setError, timed)) {
      handleWorkoutEdit(data)
    }
  };

  return (
    <div className="exercise__container">
      <article className="exercise__card exercise__card--form">
        {exercise_id !== 1 && <Exercise {...exerciseProps} />}
        {exercise_id === 1 && <Rest {...restProps} />}
      </article>
      <section className="exercise__card-editcancel">
        <SmallButton onClick={handleSubmit} type="save" />
        <SmallButton onClick={() => onReorder("up", workout_exercise_id)} type="moveup" />
        <SmallButton onClick={() => onReorder("down", workout_exercise_id)} type="movedown" />
        <SmallButton onClick={onCancel} type="cancel" />
      </section>
    </div>
  );
}
