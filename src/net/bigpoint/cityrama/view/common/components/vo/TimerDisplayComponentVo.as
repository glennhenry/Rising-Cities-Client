package net.bigpoint.cityrama.view.common.components.vo
{
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   
   public class TimerDisplayComponentVo
   {
      
      private var _progress:Number = -1;
      
      private var _label:String;
      
      private var _barColours:Array = ProgressBarComponent.BLUE_BAR;
      
      public function TimerDisplayComponentVo()
      {
         super();
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         this._progress = param1;
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         this._label = param1;
      }
      
      public function get barColours() : Array
      {
         return this._barColours;
      }
      
      public function set barColours(param1:Array) : void
      {
         this._barColours = param1;
      }
      
      public function get isInfinite() : Boolean
      {
         return this._progress == -1;
      }
   }
}

