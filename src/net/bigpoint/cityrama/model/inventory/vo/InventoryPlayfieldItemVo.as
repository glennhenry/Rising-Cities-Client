package net.bigpoint.cityrama.model.inventory.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.RandomUtilities;
   
   public class InventoryPlayfieldItemVo
   {
      
      public static const BLOCKED_CONSTRUCTION:String = "BLOCKED_CONSTRUCTION";
      
      public static const BLOCKED_EMERGENCY:String = "BLOCKED_EMERGENCY";
      
      public static const BLOCKED_TYPE:String = "BLOCKED_TYPE";
      
      private var _buildingDTO:BuildingDTO;
      
      private var _decorationVo:DecorationVo;
      
      private var _improvementVector:Vector.<BriskDynaVo>;
      
      private var _canBePlacedOnCurrentPlayfield:Boolean;
      
      private var _blockedReason:String = "";
      
      public function InventoryPlayfieldItemVo()
      {
         super();
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._buildingDTO;
      }
      
      public function set buildingDTO(param1:BuildingDTO) : void
      {
         this._buildingDTO = param1;
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._decorationVo;
      }
      
      public function set decorationVo(param1:DecorationVo) : void
      {
         this._decorationVo = param1;
      }
      
      private function get residentType() : String
      {
         var _loc1_:PhaseDTO = null;
         if(this._buildingDTO)
         {
            if(this._buildingDTO.activePhases)
            {
               for each(_loc1_ in this._buildingDTO.activePhases)
               {
                  if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENT)
                  {
                     return _loc1_.config.listEntryOutputs[0].resourceConfig.type;
                  }
               }
            }
         }
         return "";
      }
      
      public function get residentGfx() : BriskDynaVo
      {
         if(this.residentType != "")
         {
            switch(this.residentType)
            {
               case ServerResConst.RESOURCE_ACADEMICS:
                  return new BriskDynaVo("gui_ui_inventory","residents_students");
               case ServerResConst.RESOURCE_RICHMEN:
                  return new BriskDynaVo("gui_ui_inventory","residents_richmen");
               case ServerResConst.RESOURCE_WORKERS:
                  return new BriskDynaVo("gui_ui_inventory","residents_worker");
            }
         }
         return null;
      }
      
      public function get bgGfxVo() : BriskDynaVo
      {
         if(this.configItem)
         {
            if(this.configItem.specialHighlighting)
            {
               return new BriskDynaVo("gui_ui_inventory","bg_playfieldItem_gold");
            }
            return new BriskDynaVo("gui_ui_inventory","bg_playfieldItem_blue");
         }
         return null;
      }
      
      public function get improvementGfx() : Vector.<BriskDynaVo>
      {
         return this._improvementVector;
      }
      
      public function get configItem() : ConfigPlayfieldItemDTO
      {
         if(this._decorationVo)
         {
            return this._decorationVo.config;
         }
         if(this._buildingDTO)
         {
            return this._buildingDTO.config;
         }
         return null;
      }
      
      public function set improvementVector(param1:Vector.<BriskDynaVo>) : void
      {
         this._improvementVector = param1;
      }
      
      public function get canBePlacedOnCurrentPlayfield() : Boolean
      {
         return this._canBePlacedOnCurrentPlayfield;
      }
      
      public function set canBePlacedOnCurrentPlayfield(param1:Boolean) : void
      {
         this._canBePlacedOnCurrentPlayfield = param1;
      }
      
      public function get itemId() : Number
      {
         if(this.buildingDTO)
         {
            return this.buildingDTO.id;
         }
         if(this.decorationVo)
         {
            return this.decorationVo.id;
         }
         return -1;
      }
      
      public function get playfieldItemGfxVo() : BriskDynaVo
      {
         if(this.decorationVo)
         {
            return new BriskDynaVo(RandomUtilities.getLibFromGFx(this.itemGfxId),"FieldItem_" + this.itemGfxId + "_level1_big");
         }
         if(this.buildingDTO)
         {
            return new BriskDynaVo(RandomUtilities.getLibFromGFx(this.itemGfxId),"FieldItem_" + this.itemGfxId + "_level" + (this.buildingDTO.buildingLevel + 1) + "_big");
         }
         return null;
      }
      
      public function get isBlocked() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(this.sortCategory == "")
         {
            this._blockedReason = BLOCKED_TYPE;
            return true;
         }
         if(this.buildingDTO)
         {
            if(this.buildingDTO.emergencyDTO)
            {
               this._blockedReason = BLOCKED_EMERGENCY;
               return true;
            }
            for each(_loc1_ in this.buildingDTO.activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_ACTIVATE || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL)
               {
                  this._blockedReason = BLOCKED_CONSTRUCTION;
                  return true;
               }
            }
         }
         return false;
      }
      
      public function get sortCategory() : String
      {
         if(this.configItem)
         {
            if(this.configItem.tags.indexOf(ServerTagConstants.RESIDENTIAL) != -1)
            {
               return ServerTagConstants.RESIDENTIAL;
            }
            if(this.configItem.tags.indexOf(ServerTagConstants.SHOP) != -1)
            {
               return ServerTagConstants.SHOP;
            }
            if(this.configItem.tags.indexOf(ServerTagConstants.DECORATION) != -1 && this.configItem.tags.indexOf(ServerTagConstants.SECURITY_DEVICE) == -1)
            {
               return ServerTagConstants.DECORATION;
            }
            if(this.configItem.tags.indexOf(ServerTagConstants.POLICE_DEPARTMENT) != -1 || this.configItem.tags.indexOf(ServerTagConstants.HOSPITAL) != -1 || this.configItem.tags.indexOf(ServerTagConstants.FIRE_DEPARTMENT) != -1 || this.configItem.tags.indexOf(ServerTagConstants.SCHOOL) != -1 || this.configItem.tags.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
            {
               return PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY;
            }
         }
         return "";
      }
      
      public function get itemGfxId() : Number
      {
         if(this.decorationVo)
         {
            return this.decorationVo.config.gfxId;
         }
         if(this.buildingDTO)
         {
            return this.buildingDTO.config.gfxId;
         }
         return 0;
      }
      
      public function get itemLocaleId() : String
      {
         if(this.decorationVo)
         {
            return this.decorationVo.config.localeId;
         }
         if(this.buildingDTO)
         {
            return this.buildingDTO.config.localeId;
         }
         return "";
      }
      
      public function get blockedReason() : String
      {
         return this._blockedReason;
      }
      
      public function get departmentGfx() : BriskDynaVo
      {
         var _loc1_:String = null;
         var _loc2_:ConfigSecurityGradeDTO = null;
         if(this.configItem)
         {
            for each(_loc1_ in this.configItem.tags)
            {
               if(_loc1_ == ServerTagConstants.POLICE_DEPARTMENT)
               {
                  return new BriskDynaVo("gui_ui_inventory","emergency_police");
               }
               if(_loc1_ == ServerTagConstants.FIRE_DEPARTMENT)
               {
                  return new BriskDynaVo("gui_ui_inventory","emergency_fire");
               }
               if(_loc1_ == ServerTagConstants.HOSPITAL)
               {
                  return new BriskDynaVo("gui_ui_inventory","emergency_hospital");
               }
               if(_loc1_ == ServerTagConstants.SECURITY_DEVICE)
               {
                  for each(_loc2_ in this.configItem.configSecurityGrades)
                  {
                     switch(_loc2_.type)
                     {
                        case ServerTagConstants.FIRE_DEPARTMENT:
                           return new BriskDynaVo("gui_ui_inventory","emergency_fire");
                        case ServerTagConstants.POLICE_DEPARTMENT:
                           return new BriskDynaVo("gui_ui_inventory","emergency_police");
                        case ServerTagConstants.HOSPITAL:
                           return new BriskDynaVo("gui_ui_inventory","emergency_hospital");
                     }
                  }
               }
            }
         }
         return null;
      }
   }
}

