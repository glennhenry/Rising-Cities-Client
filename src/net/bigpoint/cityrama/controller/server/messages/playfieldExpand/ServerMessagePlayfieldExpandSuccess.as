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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc8_:ExpansionFieldObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:IGameObjectVo = null;
         var _loc2_:Object = MessageVo(param1.getBody()).json;
         var _loc3_:Object = {};
         if(_loc15_ || Boolean(_loc3_))
         {
            _loc3_.pid = _loc2_.dto.pid;
            if(_loc15_)
            {
               _loc3_.cpe = _loc2_.dto.cpe;
            }
         }
         var _loc4_:ExpansionFieldObjectVo = new ExpansionFieldObjectVo(null,_loc3_);
         var _loc5_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         _loc5_.playfieldDTO.expansions.push(_loc4_);
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:Vector.<ExpansionFieldObject> = _loc6_.getExpansionByRect(new Rectangle(_loc4_.dimensions.x,_loc4_.dimensions.y,_loc4_.dimensions.width,_loc4_.dimensions.height));
         if(_loc7_.length > 0)
         {
            if(!(_loc16_ && Boolean(_loc3_)))
            {
               _loc8_ = _loc7_[0];
               §§goto(addr00fb);
            }
            §§goto(addr0101);
         }
         addr00fb:
         if(_loc8_)
         {
            addr0101:
            for each(_loc12_ in _loc8_.expansionFieldObjectVo.temporaryAdded)
            {
               _loc11_ = _loc6_.getObjectByVo(_loc12_) as BillboardObject;
               if(_loc15_ || Boolean(this))
               {
                  _loc6_.removeGameObjectVofromMatrix(_loc12_);
                  if(!(_loc16_ && Boolean(this)))
                  {
                     facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc11_);
                  }
               }
            }
            if(!(_loc16_ && Boolean(this)))
            {
               if(OptionsGlobalVariables.getInstance().showDropIcons)
               {
                  if(_loc15_ || Boolean(param1))
                  {
                     sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                        "tO":_loc8_,
                        "cP":_loc8_.expansionFieldObjectVo.informationFloaterPhase
                     });
                     if(!(_loc16_ && Boolean(_loc2_)))
                     {
                        addr01ca:
                        _loc8_.invalidateInformationFloaterManager();
                        if(_loc15_ || Boolean(_loc2_))
                        {
                           _loc6_.removeGameObjectVofromMatrix(_loc8_.expansionFieldObjectVo);
                           if(!_loc16_)
                           {
                              addr01ef:
                              sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc8_);
                           }
                           var _loc9_:PlayfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
                           _loc9_.invalidateExpansions();
                           var _loc10_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                           _loc10_.invalidateAll();
                           §§goto(addr01fb);
                        }
                     }
                  }
                  §§goto(addr01ef);
               }
               §§goto(addr01ca);
            }
         }
         addr01fb:
         if(!_loc16_)
         {
            sendNotification(ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER);
         }
      }
   }
}

