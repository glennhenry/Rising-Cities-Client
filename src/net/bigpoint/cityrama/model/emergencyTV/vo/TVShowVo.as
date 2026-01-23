package net.bigpoint.cityrama.model.emergencyTV.vo
{
   public class TVShowVo
   {
      
      public static const START:String = "START";
      
      public static const SUCCESS:String = "SUCCESS";
      
      public static const FAIL:String = "FAIL";
      
      public static const NONE:String = "NONE";
      
      private var _emergencyGfxId:Number;
      
      private var _reporterFrameRate:int = 12;
      
      private var _professionalFrameRate:int = 12;
      
      private var _backGroundFrameRate:int = 12;
      
      private var _state:String;
      
      private var _mainDept:String;
      
      public function TVShowVo(param1:Number = 0, param2:String = "", param3:String = "NONE")
      {
         super();
         this._emergencyGfxId = param1;
         this._mainDept = param2;
         this._state = param3;
      }
      
      public function get reporterMC() : String
      {
         switch(this._state)
         {
            case START:
               return this._mainDept + "_tv_reporter_start";
            case SUCCESS:
               return this._mainDept + "_animation_success";
            case FAIL:
               return this._mainDept + "_animation_fail";
            default:
               return "";
         }
      }
      
      public function get backGroundMC() : String
      {
         switch(this._state)
         {
            case START:
               return this._emergencyGfxId + "_tv_bg_start";
            case SUCCESS:
               return this._mainDept + "_tv_bg_success";
            case FAIL:
               return this._mainDept + "_tv_bg_fail";
            default:
               return this._emergencyGfxId + "_tv_bg_start";
         }
      }
      
      public function get backGroundlibName() : String
      {
         return this.backGroundMC;
      }
      
      public function get reporterLib() : String
      {
         return this.reporterMC;
      }
      
      public function get swfName() : String
      {
         switch(this._state)
         {
            case SUCCESS:
            case FAIL:
               return this._mainDept + "_tv";
            default:
               return this._emergencyGfxId.toString();
         }
      }
      
      public function get reporterSwfName() : String
      {
         return this._mainDept + "_tv";
      }
      
      public function get reporterFrameRate() : int
      {
         return this._reporterFrameRate;
      }
      
      public function get backGroundFrameRate() : int
      {
         return this._backGroundFrameRate;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set reporterFrameRate(param1:int) : void
      {
         this._reporterFrameRate = param1;
      }
      
      public function set backGroundFrameRate(param1:int) : void
      {
         this._backGroundFrameRate = param1;
      }
      
      public function get mainDept() : String
      {
         return this._mainDept;
      }
   }
}

