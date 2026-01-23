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
      
      private var _currentEventState:String = "NONE";
      
      private var _currentEventGfxId:int;
      
      private var _currentEventStage:int;
      
      public function CitySquareFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function set currentEventState(param1:String) : void
      {
         this._currentEventState = param1;
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
         this._currentEventGfxId = param1;
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
         this._currentEventStage = param1;
      }
   }
}

