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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(param3))
         {
            super();
            if(_loc5_ || Boolean(param2))
            {
               this._startCondition = param1;
               if(_loc5_)
               {
                  addr0055:
                  this._framesetName = param2;
                  if(_loc5_ || Boolean(this))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0073);
               }
               addr0068:
               this._duration = param3;
               if(_loc5_)
               {
                  addr0073:
                  this._onCompleteAction = param4;
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr0055);
      }
      
      public function get onCompleteAction() : String
      {
         return this._onCompleteAction;
      }
      
      public function set onCompleteAction(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._onCompleteAction = param1;
         }
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function set duration(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._duration = param1;
         }
      }
      
      public function get framesetName() : String
      {
         return this._framesetName;
      }
      
      public function set framesetName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._framesetName = param1;
         }
      }
      
      public function get startCondition() : String
      {
         return this._startCondition;
      }
      
      public function set startCondition(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._startCondition = param1;
         }
      }
   }
}

