package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class CitySquareFieldObjectVo extends SpecialFieldObjectVo
   {
      
      public static const EXPIRED:String = "expired";
      
      public static const RUNNING:String = "running";
      
      public static const FINISHED:String = "finished";
      
      public static const AVAILIBLE:String = "availible";
      
      public static const NONE:String = "NONE";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         EXPIRED = "expired";
         if(!(_loc1_ && _loc1_))
         {
            RUNNING = "running";
            if(_loc2_)
            {
               addr0057:
               FINISHED = "finished";
               if(!(_loc1_ && CitySquareFieldObjectVo))
               {
                  AVAILIBLE = "availible";
                  if(_loc2_ || CitySquareFieldObjectVo)
                  {
                     addr0085:
                     NONE = "NONE";
                  }
                  return;
               }
            }
            §§goto(addr0085);
         }
         §§goto(addr0057);
      }
      §§goto(addr0085);
      
      private var _currentEventState:String = "NONE";
      
      private var _currentEventGfxId:int;
      
      private var _currentEventStage:int;
      
      public function CitySquareFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super(param1);
         }
      }
      
      public function set currentEventState(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._currentEventState = param1;
         }
      }
      
      public function get currentEventGfxId() : int
      {
         return this._currentEventGfxId;
      }
      
      public function get currentEventState() : String
      {
         return this._currentEventState;
      }
      
      public function set currentEventGfxId(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._currentEventGfxId = param1;
         }
      }
      
      override public function get useConstructionAsset() : Boolean
      {
         return false;
      }
      
      override public function isUnderConstruction() : Boolean
      {
         return false;
      }
      
      override public function isReadyForNextConstructionStep() : Boolean
      {
         return false;
      }
      
      public function get currentEventStage() : int
      {
         return this._currentEventStage;
      }
      
      public function set currentEventStage(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._currentEventStage = param1;
         }
      }
   }
}

