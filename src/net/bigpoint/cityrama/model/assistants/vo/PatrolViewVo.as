package net.bigpoint.cityrama.model.assistants.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class PatrolViewVo
   {
      
      private var _name:String;
      
      private var _timerVo:TimerBarComponentVo;
      
      private var _emergencyRate:Number = 0;
      
      private var _gfxId:Number = 0;
      
      public function PatrolViewVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get isActive() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._timerVo);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr0035:
                     if(this._timerVo.targetTime != 0)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           addr004b:
                           §§push(true);
                           if(_loc1_ || Boolean(this))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr005a:
                           return false;
                        }
                        return §§pop();
                     }
                     §§goto(addr005a);
                  }
                  §§goto(addr004b);
               }
               §§goto(addr005a);
            }
            §§goto(addr0035);
         }
         §§goto(addr005a);
      }
      
      public function get timerVo() : TimerBarComponentVo
      {
         return this._timerVo;
      }
      
      public function set timerVo(param1:TimerBarComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._timerVo = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._name = param1;
         }
      }
      
      public function get emergencyRate() : Number
      {
         return this._emergencyRate;
      }
      
      public function set emergencyRate(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._emergencyRate = param1;
         }
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._gfxId = param1;
         }
      }
   }
}

