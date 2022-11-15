import { component$ } from '@builder.io/qwik';
import type { DocumentHead } from '@builder.io/qwik-city';

export default component$(() => {
  return (
    <>
      <h1>
        Leo Tiofan Justicia
      </h1>
      <div>
        I'm a Tech Enthusiast. Currently, I'm working as an Engineering Manager at eFishery, an aqua-tech company located in Bandung, Indonesia. I have about six years of experience using JavaScript Technologies Like React and React Native and also having fun using technologies from PHP, Dart, and Go. In addition, I have three years of going experience in leading agile teams.
      </div>
    </>
  );
});

export const head: DocumentHead = {
  title: 'leotj.com',
  meta: [
    {
      name: 'description',
      content: 'leotj.com site description',
    },
  ],
};
