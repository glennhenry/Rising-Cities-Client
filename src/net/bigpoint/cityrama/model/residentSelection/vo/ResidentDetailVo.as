package net.bigpoint.cityrama.model.residentSelection.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class ResidentDetailVo extends ResidentVo
   {
      
      private var _movePossible:Boolean;
      
      private var _locked:Boolean;
      
      public function ResidentDetailVo(param1:ResidentVo)
      {
         super(param1.type,param1.buildingLevel,param1.minUserLevel);
      }
      
      public function set movePossible(param1:Boolean) : void
      {
         this._movePossible = param1;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._locked = param1;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get movePossible() : Boolean
      {
         return this._movePossible;
      }
      
      public function get buttonText() : String
      {
         if(type == ServerResConst.RESOURCE_ACADEMICS || type == ServerResConst.RESOURCE_RICHMEN || type == ServerResConst.RESOURCE_WORKERS)
         {
            return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.button.active");
         }
         return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.button.inactive");
      }
      
      public function get residentName() : String
      {
         switch(type)
         {
            case ServerResConst.RESOURCE_RICHMEN:
               return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.name.richMan");
            case ServerResConst.RESOURCE_ACADEMICS:
               return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.name.academics");
            case ServerResConst.RESOURCE_WORKERS:
               return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.name.worker");
            default:
               return "";
         }
      }
      
      public function get residentInfoText() : String
      {
         switch(type)
         {
            case ServerResConst.RESOURCE_RICHMEN:
               return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.richMan");
            case ServerResConst.RESOURCE_ACADEMICS:
               return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.academics");
            case ServerResConst.RESOURCE_WORKERS:
               return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.worker");
            default:
               return LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavour.unknown");
         }
      }
      
      public function get currencyName() : String
      {
         switch(type)
         {
            case ServerResConst.RESOURCE_RICHMEN:
               return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.virtualcurrency");
            case ServerResConst.RESOURCE_ACADEMICS:
               return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.educationpoints");
            case ServerResConst.RESOURCE_WORKERS:
               return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.productionpoints");
            default:
               return "";
         }
      }
      
      public function get cardBGImage() : BriskDynaVo
      {
         switch(type)
         {
            case ServerResConst.RESOURCE_RICHMEN:
               return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_rich");
            case ServerResConst.RESOURCE_ACADEMICS:
               return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_student");
            case ServerResConst.RESOURCE_WORKERS:
               return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_work");
            default:
               return new BriskDynaVo("gui_popups_resSelectionPopup","card_bg_secret");
         }
      }
      
      public function get currencyImage() : BriskDynaVo
      {
         switch(type)
         {
            case ServerResConst.RESOURCE_RICHMEN:
               return new BriskDynaVo("gui_resources_icons","layer_cc_icon");
            case ServerResConst.RESOURCE_ACADEMICS:
               return new BriskDynaVo("gui_popups_resSelectionPopup","icon_educationpoints");
            case ServerResConst.RESOURCE_WORKERS:
               return new BriskDynaVo("gui_popups_resSelectionPopup","icon_productionpoint");
            default:
               return null;
         }
      }
   }
}

