import React, { Fragment } from "react";
import CardLeft from "./Exercise/CardLeft";
import SmallButton from "./buttons_toggles/SmallButton";
import CategoryBar from "./CategoryBar";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import './WorkoutItem.scss'

export default function WorkoutItem(props) {
  const { name, gif_url, onEdit, ownWorkout, onClick, onPlay, onRemove, categoryCounts} = {...props}

  return (
    <Fragment>
      <article className="workout__card workout__card--show" onClick={onClick} disabled>
        <CardLeft gif_url={gif_url} category={""} name={name} />
        <section className="workout__card-right">
          <div className="workout__card-header">
            <h1> {name} </h1>
            <div className="workout__card-divider"></div>
          </div>
          <div className="workout__card-note">
            <button
              type="button"
              className="workout__card-btn"
              onClick={event => {
                console.log("clicked play!")
                event.preventDefault();
                event.stopPropagation();
                onPlay();
              }}
            >
              <FontAwesomeIcon icon="fa-solid fa-play" />
            </button>
            {onRemove &&
              <button
              type="button"
              className="workout__card-btn"
              onClick={event => {
                console.log("clicked remove!")
                event.preventDefault();
                event.stopPropagation();
                onRemove();
              }}
            >
              Remove
            </button>}
          </div>
          <CategoryBar {...categoryCounts} />
        </section>
      </article>
      {ownWorkout && <SmallButton type="edit" onClick={onEdit}>Edit Workout</SmallButton>}
    </Fragment>
  );
}