import consumer from "./consumer"

const initChildCable = () => {
  const messagesContainer = document.getElementById('messages');
  console.log(messagesContainer)
  if (messagesContainer) {
    const id = messagesContainer.dataset.childId;
    console.log(id)
    consumer.subscriptions.create({ channel: "ChildChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChildCable };
