package net.bigpoint.cityrama.model.server.vo.server
{
   public class MasteryChallengeDTO
   {
      
      private var _id:Number;
      
      private var _currentProgress:int;
      
      private var _config:ConfigMasteryChallengeDTO;
      
      public function MasteryChallengeDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this._id = param1.id;
               if(_loc2_ || _loc3_)
               {
                  addr0047:
                  this._currentProgress = param1.v;
               }
               §§goto(addr0050);
            }
            §§goto(addr0047);
         }
         addr0050:
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get currentProgress() : int
      {
         return this._currentProgress;
      }
      
      public function get config() : ConfigMasteryChallengeDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigMasteryChallengeDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._config = param1;
         }
      }
   }
}

