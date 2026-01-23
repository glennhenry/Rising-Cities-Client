package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.GameObjectFactory;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BluePrintSelectedCommand extends SimpleCommand
   {
      
      public function BluePrintSelectedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:ApplicationModeProxy = null;
         var _loc8_:GridProxy = null;
         var _loc9_:GameConfigProxy = null;
         var _loc10_:FilePreloadServiceProxy = null;
         var _loc11_:FileRuntimeLoadServiceProxy = null;
         var _loc12_:TimerProxy = null;
         var _loc13_:PlayfieldProxy = null;
         var _loc14_:RestrictionProxy = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Cuboid = null;
         var _loc22_:IGameObjectVo = null;
         var _loc23_:GameObjectFactory = null;
         var _loc2_:FieldBuildProxy = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
         if(!_loc2_)
         {
            _loc2_ = new FieldBuildProxy();
            facade.registerProxy(_loc2_);
         }
         var _loc3_:Object = param1.getBody();
         var _loc4_:ConfigPlayfieldItemDTO = _loc3_.config as ConfigPlayfieldItemDTO;
         var _loc5_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc6_ in _loc4_.tagIds)
         {
            if(ConfigTagDTO(_loc5_.config.tags[_loc6_]).tagName == ServerTagConstants.RESIDENTIAL)
            {
               sendNotification(VirtualTaskNotificationInterest.RESIDENTIAL_CATEGORY_PLACE_SELECTED);
               break;
            }
            if(ConfigTagDTO(_loc5_.config.tags[_loc6_]).tagName == ServerTagConstants.PRODUCTION)
            {
               sendNotification(VirtualTaskNotificationInterest.PRODUCTION_CATEGORY_PLACE_SELECTED);
               break;
            }
            if(ConfigTagDTO(_loc5_.config.tags[_loc6_]).tagName == ServerTagConstants.GROUND)
            {
               sendNotification(VirtualTaskNotificationInterest.GROUND_CATEGORY_PLACE_SELECTED);
               break;
            }
         }
         sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PLACE_CLICKED);
         _loc7_ = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         _loc8_ = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         _loc9_ = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         _loc10_ = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         _loc11_ = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         _loc12_ = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         _loc13_ = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         _loc14_ = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         _loc7_.mode = ApplicationModeProxy.MODE_BUILD;
         _loc2_.selectedConfig = _loc4_;
         _loc2_.buildAndBuyPermission = _loc3_.buyPermission as Boolean;
         _loc15_ = Math.round(_loc13_.mouseMatrixPoint.x - _loc2_.selectedConfig.sizeX / 2);
         _loc16_ = Math.round(_loc13_.mouseMatrixPoint.y - _loc2_.selectedConfig.sizeY / 2);
         _loc17_ = VectorUtilities.getMinValue(_loc2_.selectedConfig.zLevels);
         _loc18_ = _loc2_.selectedConfig.sizeX;
         _loc19_ = _loc2_.selectedConfig.sizeY;
         _loc20_ = _loc2_.selectedConfig.zLevels.length;
         _loc21_ = new Cuboid(_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
         _loc22_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_.selectedConfig,_loc21_,_loc12_,_loc9_,_loc13_);
         _loc23_ = new GameObjectFactory(_loc10_.service,_loc11_.service,_loc9_.config.tags);
         if(!(_loc22_ is IPlaneObjectVo))
         {
            var _loc24_:BillboardObject = _loc23_.getBillboardObject(_loc22_ as BillboardObjectVo);
            _loc24_.expandHitzone();
            PlayfieldObjectsProxy.addIconOffsets(_loc22_ as BillboardObjectVo,_loc10_);
            var _loc26_:Vector.<ConfigGroundRestrictionDTO> = _loc14_.getAllRestrictionsForItem(null.billboardObjectVo.configPlayfieldItemVo);
            if(_loc26_.length > 0)
            {
               _loc14_.restrictionGridSource = null;
               _loc14_.restrictionGridVisibility = true;
            }
            if(null is IBuildUpManagerImplementation)
            {
               null.presentation.visible = false;
               (null as IBuildUpManagerImplementation).invalidateBuildUpManager();
            }
            else
            {
               null.presentation.visible = true;
            }
            (null as IEstablishedManagerImplementation).invalidateEstablishedManager();
            _loc8_.setItemSize(null.billboardObjectVo.configPlayfieldItemVo.sizeX,null.billboardObjectVo.configPlayfieldItemVo.sizeY,null.billboardObjectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(null.billboardObjectVo.configPlayfieldItemVo.zLevels));
            null.updateIndex(_loc15_,_loc16_);
            null.moveTo(_loc15_ * _loc13_.tileSize,_loc16_ * _loc13_.tileSize,1);
            _loc2_.billboardObjectToAdd = null;
            sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,null);
            if(null is IEmergencyInfrastructure)
            {
               sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,(null as IEmergencyInfrastructure).emergencyFieldObjectVo.department[0]);
            }
            this.addNeedIcons(null);
         }
         else if(_loc22_ is IPlaneObjectVo)
         {
            var _loc25_:IPlaneObject = _loc23_.getPlane(_loc22_ as IPlaneObjectVo);
            _loc2_.planeObjectToAdd = null;
            _loc26_ = _loc14_.getAllRestrictionsForItem(null.objectVo.configPlayfieldItemVo);
            if(_loc26_.length > 0)
            {
               _loc14_.setRestrictionGridSource(null,true);
               _loc14_.restrictionGridVisibility = true;
            }
            var _loc27_:StreetBuildProxy = facade.retrieveProxy(StreetBuildProxy.NAME) as StreetBuildProxy;
            if(_loc27_ == null)
            {
               _loc27_ = new StreetBuildProxy();
               facade.registerProxy(null);
            }
            null.updateTerrain(null);
            null.presentation.visible = false;
            _loc8_.setItemSize(null.objectVo.configPlayfieldItemVo.sizeX,null.objectVo.configPlayfieldItemVo.sizeY,null.objectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(null.objectVo.configPlayfieldItemVo.zLevels));
            null.updateIndex(_loc15_,_loc16_);
            sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,null);
         }
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         var _loc2_:Object = null;
         if(param1 is ShopFieldObject || param1 is ResidentialFieldObject)
         {
            _loc2_ = new Object();
            _loc2_.vo = param1.billboardObjectVo;
            _loc2_.rollOver = false;
            facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,_loc2_);
         }
      }
   }
}

