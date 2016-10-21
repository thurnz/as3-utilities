package {
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class SimpleButton extends Sprite {

		public function SimpleButton() {
			mouseChildren = false;
			buttonMode = true;
			addListeners();
		}

		public function destroy(): void {
			removeListeners();
		}

		protected function addListeners(): void {
			addEventListener(MouseEvent.ROLL_OVER, rollOverHandler);
			addEventListener(MouseEvent.ROLL_OUT, rollOutHandler);
		}

		protected function removeListeners(): void {
			removeEventListener(MouseEvent.ROLL_OVER, rollOverHandler);
			removeEventListener(MouseEvent.ROLL_OUT, rollOutHandler);
		}

		protected function rollOverHandler(evt: MouseEvent): void {

		}

		protected function rollOutHandler(evt: MouseEvent): void {

		}

	}

}