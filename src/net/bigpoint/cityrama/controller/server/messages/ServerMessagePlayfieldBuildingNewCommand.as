package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingNewCommand extends SimpleCommand implements ICommand
   {
      
      private var _configProxy:GameConfigProxy;
      
      public function ServerMessagePlayfieldBuildingNewCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc13_:ConfigPlayfieldItemDTO = null;
         var _loc14_:Cuboid = null;
         var _loc15_:BillboardObjectVo = null;
         var _loc16_:BillboardObjectVo = null;
         var _loc17_:SecurityMatrixProxy = null;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc5_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc6_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc7_:ApplicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         var _loc8_:BuildingDTO = new BuildingDTO(_loc2_.json.b,this._configProxy.getConfigPlayfieldItemById(_loc2_.json.b.c));
         var _loc9_:Cuboid = new Cuboid(_loc8_.posX,_loc8_.posY,0,_loc8_.config.sizeX,_loc8_.config.sizeY,_loc8_.config.zLevels.length);
         var _loc10_:IGameObjectVo = _loc3_.getGameObjectByCuboid(_loc9_);
         var _loc11_:BillboardObject = _loc3_.getBillboardById(_loc8_.id);
         var _loc12_:Boolean = _loc10_ is BillboardObjectVo || _loc11_ is IEstablishedManagerImplementation || _loc11_ is IBuildUpManagerImplementation || _loc11_ is ProductionFieldObject;
         if(_loc12_ == false)
         {
            _loc13_ = this._configProxy.getConfigPlayfieldItemById(_loc8_.configId);
            _loc14_ = new Cuboid(_loc8_.posX,_loc8_.posY,VectorUtilities.getMinValue(_loc13_.zLevels),_loc13_.sizeX,_loc13_.sizeY,_loc13_.zLevels.length);
            _loc15_ = BillboardObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc13_,_loc14_,_loc5_,this._configProxy,_loc4_));
            _loc15_.buildingDTO = _loc8_;
            PlayfieldObjectsProxy.addIconOffsets(_loc15_,_loc6_);
            if(_loc15_ is IImprovable)
            {
               this.generateImprovements(_loc15_);
            }
            _loc3_.addGameObjectByData(_loc15_);
            return;
         }
         if(_loc10_ is BillboardObjectVo)
         {
            _loc16_ = _loc10_ as BillboardObjectVo;
            _loc16_.buildingDTO = _loc8_;
            if(_loc16_ is IImprovable)
            {
               this.generateImprovements(_loc16_);
            }
            sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,_loc10_);
         }
         if(_loc11_ is IEstablishedManagerImplementation)
         {
            (_loc11_ as IEstablishedManagerImplementation).invalidateEstablishedManager();
         }
         if(_loc11_ is IBuildUpManagerImplementation)
         {
            (_loc11_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
         }
         if(_loc11_ is ProductionFieldObject)
         {
            ConfigFactory.buildProductionFieldObjectVo((_loc11_ as ProductionFieldObject).productionFieldObjectVo);
         }
         if(_loc11_ is IEmergencyInfrastructure)
         {
            _loc17_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            _loc17_.addObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
         }
         if(_loc7_.mode == ApplicationModeProxy.MODE_MOVE)
         {
            facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
         }
      }
      
      private function generateImprovements(param1:BillboardObjectVo) : void
      {
         var _loc2_:Vector.<ImprovementVo> = null;
         var _loc3_:ImprovementDTO = null;
         if(param1 is IImprovable)
         {
            _loc2_ = new Vector.<ImprovementVo>();
            for each(_loc3_ in param1.buildingDTO.improvements)
            {
               _loc2_.push(new ImprovementVo(_loc3_,this._configProxy.config.improvements[_loc3_.configId]));
            }
            (param1 as IImprovable).currentImprovements = _loc2_;
         }
      }
   }
}

