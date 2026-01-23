package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   
   public class BoulderObjectVo extends BillboardObjectVo implements IEventDrop
   {
      
      private var _boulderVo:BoulderVo;
      
      private var _phaseJustStarted:Boolean;
      
      private var _currentEventLocaleId:String;
      
      public function BoulderObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function get boulderVo() : BoulderVo
      {
         return this._boulderVo;
      }
      
      override public function get activePhases() : Vector.<PhaseDTO>
      {
         return this._boulderVo.activePhases;
      }
      
      override public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         this._boulderVo.activePhases = param1;
      }
      
      public function set boulderVo(param1:BoulderVo) : void
      {
         this._boulderVo = param1;
      }
      
      public function get isInDemolitionMode() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(this.activePhases.length > 0)
         {
            for each(_loc1_ in this.activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function get userInteractionLocked() : Boolean
      {
         if(this.isInDemolitionMode)
         {
            return true;
         }
         return super.userInteractionLocked;
      }
      
      public function get boulderType() : String
      {
         var _loc1_:String = null;
         for each(_loc1_ in configPlayfieldItemVo.tags)
         {
            switch(_loc1_)
            {
               case ServerTagConstants.TREE:
               case ServerTagConstants.ROCK:
               case ServerTagConstants.SHRUBBERY:
                  return _loc1_;
            }
         }
         return "";
      }
      
      public function get demolitionCosts() : Number
      {
         var _loc1_:ConfigOutputDTO = null;
         if(configPlayfieldItemVo.destructionPhases.length)
         {
            if(configPlayfieldItemVo.destructionPhases[0])
            {
               for each(_loc1_ in configPlayfieldItemVo.destructionPhases[0].listEntryOutputs)
               {
                  if(_loc1_.resourceConfig != null)
                  {
                     if(_loc1_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                     {
                        return Math.abs(_loc1_.outputAmount);
                     }
                  }
               }
            }
         }
         return 0;
      }
      
      override public function get percentageOfRemainingTimer() : Number
      {
         var _loc1_:PhaseDTO = null;
         if(this.activePhases.length > 0)
         {
            for each(_loc1_ in this.activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
               {
                  return (_loc1_.expirationTime - currentTimeStamp) / _loc1_.config.durationConfig.duration;
               }
            }
         }
         return super.percentageOfRemainingTimer;
      }
      
      public function get phaseJustStarted() : Boolean
      {
         return this._phaseJustStarted;
      }
      
      public function set phaseJustStarted(param1:Boolean) : void
      {
         this._phaseJustStarted = param1;
      }
      
      public function get isStreetBoulder() : Boolean
      {
         if(configPlayfieldItemVo)
         {
            return configPlayfieldItemVo.tags.indexOf(ServerTagConstants.STREETBOULDER) != -1;
         }
         return false;
      }
      
      public function get isEventBoulder() : Boolean
      {
         return configPlayfieldItemVo.gfxId > 43000;
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set currentEventLocaleId(param1:String) : void
      {
         this._currentEventLocaleId = param1;
      }
   }
}

