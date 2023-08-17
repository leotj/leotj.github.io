import { component$, useStylesScoped$, $ } from "@builder.io/qwik";
import styles from "./resume-button.scss?inline";

export default component$(() => {
  useStylesScoped$(styles);

  const navigateToResumePage = $(() => {
    window.location.href = "https://resume.leotj.com/";
  });

  return <button onClick$={navigateToResumePage}>Uncover My Expertise</button>;
});
