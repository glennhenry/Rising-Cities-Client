package net.bigpoint.cityrama.view.common.components.vo
{
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   
   public class TimerDisplayComponentVo
   {
      
      private var _progress:Number = -1;
      
      private var _label:String;
      
      private var _barColours:Array;
      
      public function TimerDisplayComponentVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._barColours = ProgressBarComponent.BLUE_BAR;
            if(!_loc1_)
            {
               addr0025:
               super();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._progress = param1;
         }
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._label = param1;
         }
      }
      
      public function get barColours() : Array
      {
         return this._barColours;
      }
      
      public function set barColours(param1:Array) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._barColours = param1;
         }
      }
      
      public function get isInfinite() : Boolean
      {
         return this._progress == -1;
      }
   }
}

