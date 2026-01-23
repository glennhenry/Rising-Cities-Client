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
         super();
      }
      
      public function get isActive() : Boolean
      {
         if(this._timerVo)
         {
            if(this._timerVo.targetTime != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get timerVo() : TimerBarComponentVo
      {
         return this._timerVo;
      }
      
      public function set timerVo(param1:TimerBarComponentVo) : void
      {
         this._timerVo = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get emergencyRate() : Number
      {
         return this._emergencyRate;
      }
      
      public function set emergencyRate(param1:Number) : void
      {
         this._emergencyRate = param1;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         this._gfxId = param1;
      }
   }
}

