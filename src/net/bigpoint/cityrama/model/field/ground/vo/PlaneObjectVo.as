package net.bigpoint.cityrama.model.field.ground.vo
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.GameObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   
   public class PlaneObjectVo extends GameObjectVo implements IPlaneObjectVo, IFloaterObjectVo
   {
      
      public static const DATA_CHANGED:String = "DATA_CHANGED";
      
      private var _groundDTO:GroundDTO;
      
      private var _tilesize:Number;
      
      private var _isConnectedToStreet:Boolean;
      
      private var _informationFloaterPhase:ConfigPhaseDTO;
      
      private var _informationFloaterCustomText:String;
      
      private var _userInteractionLocked:Boolean;
      
      public function PlaneObjectVo(param1:ConfigPlayfieldItemDTO, param2:Number)
      {
         this.tilesize = param2;
         super(param1);
      }
      
      public function get groundDTO() : GroundDTO
      {
         return this._groundDTO;
      }
      
      public function set groundDTO(param1:GroundDTO) : void
      {
         this._groundDTO = param1;
         this._isConnectedToStreet = param1.active;
         dispatchEvent(new Event(DATA_CHANGED));
      }
      
      public function get tilesize() : Number
      {
         return this._tilesize;
      }
      
      public function set tilesize(param1:Number) : void
      {
         this._tilesize = param1;
      }
      
      public function userCanAffordPlacement(param1:ConfigPlayfieldItemDTO, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:ConfigOutputDTO = null;
         for each(_loc4_ in param1.constructionPhases[0].listEntryOutputs)
         {
            if(_loc4_.resourceConfig)
            {
               if(_loc4_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
               {
                  if(Math.abs(_loc4_.outputAmount) > param2)
                  {
                     return false;
                  }
               }
               else if(_loc4_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  if(Math.abs(_loc4_.outputAmount) > param3)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      public function get isConnectedToStreet() : Boolean
      {
         return this._isConnectedToStreet;
      }
      
      public function set isConnectedToStreet(param1:Boolean) : void
      {
         this._isConnectedToStreet = param1;
         dispatchEvent(new Event(DATA_CHANGED));
      }
      
      public function get informationFloaterPhase() : ConfigPhaseDTO
      {
         return this._informationFloaterPhase;
      }
      
      public function set informationFloaterPhase(param1:ConfigPhaseDTO) : void
      {
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(param1 != null)
         {
            if(param1.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
            {
               for each(_loc2_ in configPlayfieldItemVo.activePhases)
               {
                  if(_loc2_.phaseType == ServerPhaseTypes.ACTIVATION)
                  {
                     _loc3_ = param1.clone();
                     for each(_loc4_ in _loc2_.listEntryOutputs)
                     {
                        _loc3_.listEntryOutputs.push(_loc4_);
                     }
                     this._informationFloaterPhase = _loc3_;
                     return;
                  }
               }
               this._informationFloaterPhase = param1;
            }
            else
            {
               this._informationFloaterPhase = param1;
            }
         }
         else
         {
            this._informationFloaterPhase = null;
         }
      }
      
      public function get informationFloaterCustomText() : String
      {
         return this._informationFloaterCustomText;
      }
      
      public function set informationFloaterCustomText(param1:String) : void
      {
         this._informationFloaterCustomText = param1;
      }
      
      public function getSpecificConstructionPhase(param1:String) : ConfigPhaseDTO
      {
         var _loc2_:ConfigPhaseDTO = null;
         for each(_loc2_ in configPlayfieldItemVo.constructionPhases)
         {
            if(_loc2_.phaseType == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getDestructionPhase() : ConfigPhaseDTO
      {
         var _loc1_:ConfigPhaseDTO = null;
         for each(_loc1_ in configPlayfieldItemVo.destructionPhases)
         {
            if(_loc1_.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BUILDING)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function get userInteractionLocked() : Boolean
      {
         return this._userInteractionLocked;
      }
      
      public function set userInteractionLocked(param1:Boolean) : void
      {
         this._userInteractionLocked = param1;
      }
   }
}

