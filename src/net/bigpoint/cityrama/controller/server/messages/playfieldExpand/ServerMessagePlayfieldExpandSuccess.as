package net.bigpoint.cityrama.controller.server.messages.playfieldExpand
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldExpandSuccess extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldExpandSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc8_:ExpansionFieldObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:IGameObjectVo = null;
         var _loc2_:Object = MessageVo(param1.getBody()).json;
         var _loc3_:Object = {};
         _loc3_.pid = _loc2_.dto.pid;
         _loc3_.cpe = _loc2_.dto.cpe;
         var _loc4_:ExpansionFieldObjectVo = new ExpansionFieldObjectVo(null,_loc3_);
         var _loc5_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         _loc5_.playfieldDTO.expansions.push(_loc4_);
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:Vector.<ExpansionFieldObject> = _loc6_.getExpansionByRect(new Rectangle(_loc4_.dimensions.x,_loc4_.dimensions.y,_loc4_.dimensions.width,_loc4_.dimensions.height));
         if(_loc7_.length > 0)
         {
            _loc8_ = _loc7_[0];
         }
         if(_loc8_)
         {
            for each(_loc12_ in _loc8_.expansionFieldObjectVo.temporaryAdded)
            {
               _loc11_ = _loc6_.getObjectByVo(_loc12_) as BillboardObject;
               _loc6_.removeGameObjectVofromMatrix(_loc12_);
               facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc11_);
            }
            if(OptionsGlobalVariables.getInstance().showDropIcons)
            {
               sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                  "tO":_loc8_,
                  "cP":_loc8_.expansionFieldObjectVo.informationFloaterPhase
               });
            }
            _loc8_.invalidateInformationFloaterManager();
            _loc6_.removeGameObjectVofromMatrix(_loc8_.expansionFieldObjectVo);
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc8_);
         }
         var _loc9_:PlayfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         _loc9_.invalidateExpansions();
         var _loc10_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         _loc10_.invalidateAll();
         sendNotification(ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER);
      }
   }
}

