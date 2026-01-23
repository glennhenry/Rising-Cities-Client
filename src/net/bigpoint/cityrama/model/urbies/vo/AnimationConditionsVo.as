package net.bigpoint.cityrama.model.urbies.vo
{
   public class AnimationConditionsVo
   {
      
      private var _startCondition:String;
      
      private var _framesetName:String;
      
      private var _duration:Number;
      
      private var _onCompleteAction:String;
      
      public function AnimationConditionsVo(param1:String, param2:String, param3:Number = 1, param4:String = "")
      {
         super();
         this._startCondition = param1;
         this._framesetName = param2;
         this._duration = param3;
         this._onCompleteAction = param4;
      }
      
      public function get onCompleteAction() : String
      {
         return this._onCompleteAction;
      }
      
      public function set onCompleteAction(param1:String) : void
      {
         this._onCompleteAction = param1;
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function set duration(param1:Number) : void
      {
         this._duration = param1;
      }
      
      public function get framesetName() : String
      {
         return this._framesetName;
      }
      
      public function set framesetName(param1:String) : void
      {
         this._framesetName = param1;
      }
      
      public function get startCondition() : String
      {
         return this._startCondition;
      }
      
      public function set startCondition(param1:String) : void
      {
         this._startCondition = param1;
      }
   }
}

