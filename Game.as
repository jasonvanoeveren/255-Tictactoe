package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class Game extends MovieClip {
		
		var isItPlayerOnesTurn:Boolean = true;
		
		public function Game() {
			var buttons:Array = new Array(b1, b2, b3, b4, b5, b6, b7, b8, b9);
			
			playerone.visible = false;
			playertwo.visible = false;
			tie.visible = false;
			restart.visible = false;
			
			restart.buttonMode = true;
			restart.addEventListener(MouseEvent.CLICK, restartClick);
			
			for each(var btn in buttons){
				btn.buttonMode = true;
				btn.stop();
				btn.addEventListener(MouseEvent.CLICK, handleClick);
			}			
		}
		
		function handleClick(e:MouseEvent):void {
			var buttons:Array = new Array(b1, b2, b3, b4, b5, b6, b7, b8, b9);
			
			if(e.target.currentFrame != 1) return;
			
			if(isItPlayerOnesTurn){
				e.target.gotoAndStop(2);
			} else {
				e.target.gotoAndStop(3);
			}
			
			isItPlayerOnesTurn = !isItPlayerOnesTurn;
			
			//Player One win condition.
			if (b1.currentFrame == 2 && b2.currentFrame == 2 && b3.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b4.currentFrame == 2 && b5.currentFrame == 2 && b6.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b7.currentFrame == 2 && b8.currentFrame == 2 && b9.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b1.currentFrame == 2 && b4.currentFrame == 2 && b7.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b2.currentFrame == 2 && b5.currentFrame == 2 && b8.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b3.currentFrame == 2 && b6.currentFrame == 2 && b9.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b1.currentFrame == 2 && b5.currentFrame == 2 && b9.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b3.currentFrame == 2 && b5.currentFrame == 2 && b7.currentFrame == 2){
				playerone.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			//Player 2 win condition.
			else if (b1.currentFrame == 3 && b2.currentFrame == 3 && b3.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b4.currentFrame == 3 && b5.currentFrame == 3 && b6.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b7.currentFrame == 3 && b8.currentFrame == 3 && b9.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b1.currentFrame == 3 && b4.currentFrame == 3 && b7.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b2.currentFrame == 3 && b5.currentFrame == 3 && b8.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b3.currentFrame == 3 && b6.currentFrame == 3 && b9.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b1.currentFrame == 3 && b5.currentFrame == 3 && b9.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			else if (b3.currentFrame == 3 && b5.currentFrame == 3 && b7.currentFrame == 3){
				playertwo.visible = true;
				restart.visible = true;
				for each (var btn in buttons){
					btn.removeEventListener(MouseEvent.CLICK, handleClick);
				}
			}
			
			//Check for a tie.
			else if (b1.currentFrame != 1 && b2.currentFrame != 1 && b3.currentFrame != 1 && b4.currentFrame != 1 && 
				b5.currentFrame != 1 && b6.currentFrame != 1 && b7.currentFrame != 1 && b8.currentFrame != 1 && b9.currentFrame != 1){
					tie.visible = true;
					restart.visible = true;
					for each (var btn in buttons){
						btn.removeEventListener(MouseEvent.CLICK, handleClick);
					}
				}

		}
		
		function restartClick(e:MouseEvent):void{
			var buttons:Array = new Array(b1, b2, b3, b4, b5, b6, b7, b8, b9);
			
			isItPlayerOnesTurn = true;
			playerone.visible = false;
			playertwo.visible = false;
			restart.visible = false;
			
			for each (var btn in buttons){
				if (btn.currentFrame != 1){
					btn.gotoAndStop(1);
				}
				btn.addEventListener(MouseEvent.CLICK, handleClick);
			}
		}
		
	}
	
}
