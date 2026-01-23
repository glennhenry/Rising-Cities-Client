package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.controller.EventAssetPackageLoaderFactory;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PierObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.SquareObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.SquareObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.PowerplantFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BridgeFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.services.filePreloadService.FilePreloadService;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeImageLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadService;
   
   public class GameObjectFactory
   {
      
      private var _filePreloadService:FilePreloadService;
      
      private var _fileRuntimeLoadService:FileRuntimeLoadService;
      
      private var _configTagDict:Dictionary;
      
      public function GameObjectFactory(param1:FilePreloadService, param2:FileRuntimeLoadService, param3:Dictionary)
      {
         super();
         this._filePreloadService = param1;
         this._fileRuntimeLoadService = param2;
         this._configTagDict = param3;
      }
      
      private static function getBaseLayerLoaderName(param1:Class) : String
      {
         if(param1 == ResidentialFieldObject)
         {
            return "ResidentialBase";
         }
         if(param1 == ShopFieldObject)
         {
            return "ShopBase";
         }
         if(param1 == ProductionFieldObject)
         {
            return "ProductionBase";
         }
         if(param1 == PowerplantFieldObject)
         {
            return "PowerplantBase";
         }
         if(param1 == InfrastructureBuildingFieldObject || param1 == InfrastructureDecorationFieldObject)
         {
            return "SpecialBase";
         }
         if(param1 == DecorationFieldObject)
         {
            return "DecorationBase";
         }
         if(param1 == AcademyFieldObject || param1 == TownHallFieldObject || param1 == CitySquareFieldObject || param1 == MysteryBuildingFieldObject || param1 == ActivatorFieldObject || param1 == CinemaFieldObject || param1 == ScheduledDropFieldObject)
         {
            return "SpecialBase";
         }
         if(param1 == ExpansionFieldObject || param1 == BoulderFieldObject)
         {
            return "";
         }
         throw new IllegalOperationError("Not known class");
      }
      
      public function getBillboardObject(param1:IBillboardObjectVo, param2:EventProxy = null) : BillboardObject
      {
         var _loc7_:BoulderObjectVo = null;
         var _loc3_:BillboardAssetsReferenceHolder = new BillboardAssetsReferenceHolder();
         if(param1 is BoulderObjectVo)
         {
            _loc7_ = param1 as BoulderObjectVo;
            if(_loc7_.isEventBoulder)
            {
               if(param2)
               {
                  _loc3_.mainAsset = new PreloadableDisplayObject(new Sprite(),this._fileRuntimeLoadService.getLoaderForObjectInstance(EventAssetPackageLoaderFactory.SWF_LOADER_EVENT_PREFIX + param2.currentRunningEventQuestGfxId,param2.currentRunningEventQuestGfxId + "_EventBoulder",true,true));
               }
            }
            else
            {
               _loc3_.mainAsset = this.generatePreloadContainer("PlayfieldBoulders");
            }
         }
         else if(param1 is ExpansionFieldObjectVo)
         {
            _loc3_.mainAsset = this.generatePreloadContainer("PlayfieldExpansions");
         }
         else
         {
            _loc3_.mainAsset = this.generatePreloadContainer(param1.configPlayfieldItemVo.animatedSwfName);
            _loc3_.buildUpAssets = this.generatePreloadContainer("ConstructionSite");
         }
         var _loc4_:Class = ServerTagToClassSelector.getFieldObjectClassByTags(param1.configPlayfieldItemVo,this._configTagDict);
         var _loc5_:String = getBaseLayerLoaderName(_loc4_);
         if(_loc5_ != "")
         {
            _loc3_.basementAsset = this.generatePreloadContainer(_loc5_);
         }
         var _loc6_:BillboardObject = new _loc4_(_loc3_,param1);
         _loc6_.container.mouseEnabled = false;
         return _loc6_;
      }
      
      public function getClientFieldObject(param1:ClientFieldObjectVo) : ClientFieldObject
      {
         var _loc2_:PreloadableDisplayObject = null;
         if(param1 is BridgeFieldObjectVo)
         {
            _loc2_ = this.generatePreloadContainer("Bridge_assets");
            return new BridgeFieldObject(_loc2_,param1);
         }
         if(param1 is PlayfieldSwitchFieldObjectVo)
         {
            _loc2_ = this.generatePreloadContainer("playfieldSwitchFieldObjects");
            return new PlayfieldSwitchFieldObject(_loc2_,param1);
         }
         return new ClientFieldObject(_loc2_,param1);
      }
      
      private function generatePreloadContainer(param1:String) : PreloadableDisplayObject
      {
         return new PreloadableDisplayObject(new Sprite(),this._fileRuntimeLoadService.getLoaderForObjectInstance(param1,param1,true,true));
      }
      
      public function getPlane(param1:IPlaneObjectVo) : IPlaneObject
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:IPlaneObject = null;
         var _loc4_:FileRuntimeImageLoader = null;
         if(param1 is PierObjectVo)
         {
            return this.getPier(param1 as PierObjectVo);
         }
         if(param1.configPlayfieldItemVo.animatedSwfPath.indexOf(".png") == -1)
         {
            _loc2_ = this._filePreloadService.getObjectInstance(param1.configPlayfieldItemVo.animatedSwfName,param1.configPlayfieldItemVo.animatedSwfName) as DisplayObject;
         }
         else if(param1.configPlayfieldItemVo.preload == 1)
         {
            _loc2_ = this._filePreloadService.getImage(param1.configPlayfieldItemVo.animatedSwfName);
         }
         else
         {
            _loc4_ = this._fileRuntimeLoadService.getLoaderForImage(param1.configPlayfieldItemVo.animatedSwfName);
            _loc2_ = new PreloadableImage(new Sprite(),_loc4_);
         }
         if(param1 is StreetObjectVo)
         {
            _loc3_ = new StreetObject(_loc2_,param1 as StreetObjectVo);
         }
         else if(param1 is SquareObjectVo)
         {
            _loc3_ = new SquareObject(_loc2_,param1 as SquareObjectVo);
         }
         else
         {
            _loc3_ = new PlaneObject(_loc2_,param1 as PlaneObjectVo);
         }
         return _loc3_;
      }
      
      public function getPier(param1:PierObjectVo) : IPlaneObject
      {
         var _loc2_:BillboardAssetsReferenceHolder = new BillboardAssetsReferenceHolder();
         _loc2_.mainAsset = this.generatePreloadContainer(param1.configPlayfieldItemVo.animatedSwfName);
         return new PierObject(_loc2_,param1);
      }
   }
}

