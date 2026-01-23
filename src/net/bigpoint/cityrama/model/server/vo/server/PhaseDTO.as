package net.bigpoint.cityrama.model.server.vo.server
{
   public class PhaseDTO
   {
      
      private var _expirationTime:Number;
      
      private var _phaseId:Number;
      
      private var _timeLeft:Number;
      
      private var _config:ConfigPhaseDTO;
      
      private var _initTime:Number;
      
      private var _mystId:Number;
      
      public function PhaseDTO(param1:Object, param2:ConfigPhaseDTO)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super();
            if(!_loc4_)
            {
               this._phaseId = param1.pid as Number;
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._expirationTime = param1.et as Number;
                  if(_loc3_)
                  {
                     addr005f:
                     this._timeLeft = param1.tl as Number;
                     if(_loc3_ || Boolean(param1))
                     {
                        this._initTime = param1.it as Number;
                        if(!_loc4_)
                        {
                           addr0099:
                           this._mystId = param1.myst;
                           if(_loc3_)
                           {
                              this._config = param2;
                           }
                        }
                        §§goto(addr00ac);
                     }
                  }
               }
               §§goto(addr0099);
            }
            §§goto(addr005f);
         }
         addr00ac:
      }
      
      public function get expirationTime() : Number
      {
         return this._expirationTime;
      }
      
      public function get phaseId() : Number
      {
         return this._phaseId;
      }
      
      public function get config() : ConfigPhaseDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPhaseDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._config = param1;
         }
      }
      
      public function set expirationTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._expirationTime = param1;
         }
      }
      
      public function get timeLeft() : Number
      {
         return this._timeLeft;
      }
      
      public function set timeLeft(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._timeLeft = param1;
         }
      }
      
      public function get initTime() : Number
      {
         return this._initTime;
      }
      
      public function get mystId() : Number
      {
         return this._mystId;
      }
   }
}

