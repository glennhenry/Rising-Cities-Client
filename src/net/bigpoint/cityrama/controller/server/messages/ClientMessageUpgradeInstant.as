package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageUpgradeInstant extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageUpgradeInstant()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:MessageVo = null;
         var _loc9_:BillboardObject = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc11_:Vector.<ConfigOutputDTO> = null;
         var _loc12_:ConfigOutputDTO = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         var _loc6_:BillboardObjectVo = _loc2_.getBillboardById(Number(param1.getBody())).billboardObjectVo;
         if(!_loc15_)
         {
            _loc4_.bid = _loc6_.buildingDTO.id;
         }
         for each(_loc7_ in _loc6_.configPlayfieldItemVo.activePhases)
         {
            if(!(_loc15_ && Boolean(_loc2_)))
            {
               if(_loc6_ is InfrastructureBuildingFieldObjectVo)
               {
                  if(!(_loc15_ && Boolean(_loc3_)))
                  {
                     §§push(_loc7_.phaseType);
                     if(_loc16_)
                     {
                        §§push(ServerPhaseTypes.INSTANT_DEPARTMENT_UPGRADE);
                        if(!(_loc15_ && Boolean(this)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc16_ || Boolean(param1))
                              {
                                 addr0106:
                                 _loc4_.cpi = _loc7_.phaseId;
                                 if(!(_loc16_ || Boolean(this)))
                                 {
                                    addr0143:
                                    _loc4_.cpi = _loc7_.phaseId;
                                    addr015c:
                                    _loc5_ = _loc7_;
                                    break;
                                 }
                              }
                              _loc5_ = _loc7_;
                              break;
                           }
                           continue;
                        }
                        addr0139:
                        if(§§pop() != §§pop())
                        {
                           continue;
                        }
                        if(_loc16_)
                        {
                           §§goto(addr0143);
                        }
                        §§goto(addr015c);
                     }
                     else
                     {
                        addr0133:
                        §§push(ServerPhaseTypes.INSTANT_UPGRADE);
                     }
                     §§goto(addr0139);
                  }
                  §§goto(addr015c);
               }
               else
               {
                  §§push(_loc7_.phaseType);
               }
               §§goto(addr0133);
            }
            §§goto(addr0106);
         }
         _loc8_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_REQUEST_INSTANTFINISH);
         if(_loc16_ || Boolean(_loc3_))
         {
            _loc3_.sendMessage(_loc8_);
         }
         _loc9_ = _loc2_.getBillboardById(_loc6_.buildingDTO.id);
         if(_loc9_)
         {
            _loc10_ = new ConfigPhaseDTO(null);
            _loc11_ = new Vector.<ConfigOutputDTO>();
            if(!(_loc15_ && Boolean(param1)))
            {
               var _loc13_:int = 0;
               if(!_loc15_)
               {
                  for each(_loc12_ in _loc5_.listEntryOutputs)
                  {
                     §§push(_loc12_.resourceConfig);
                     if(_loc16_ || Boolean(param1))
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!(_loc16_ || Boolean(_loc3_)))
                        {
                           continue;
                        }
                        §§push(_loc12_.resourceConfig);
                     }
                     if(§§pop().type != ServerResConst.RESOURCE_REALCURRENCY)
                     {
                        if(!_loc15_)
                        {
                           _loc11_.push(_loc12_);
                        }
                     }
                  }
               }
               if(!(_loc15_ && Boolean(this)))
               {
                  _loc10_.listEntryOutputs = _loc11_;
                  if(_loc16_ || Boolean(param1))
                  {
                     _loc6_.informationFloaterPhase = _loc10_;
                     if(!_loc15_)
                     {
                        addr0273:
                        if(OptionsGlobalVariables.getInstance().showDropIcons)
                        {
                           if(_loc16_ || Boolean(this))
                           {
                              if(_loc6_.informationFloaterPhase != null)
                              {
                                 if(_loc16_)
                                 {
                                    §§goto(addr02ad);
                                 }
                              }
                              §§goto(addr02d4);
                           }
                           addr02ad:
                           facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                              "tO":_loc9_,
                              "cP":_loc6_.informationFloaterPhase
                           });
                           if(!(_loc15_ && Boolean(this)))
                           {
                              addr02d4:
                              _loc9_.invalidateInformationFloaterManager();
                           }
                           §§goto(addr02da);
                        }
                        §§goto(addr02d4);
                     }
                     §§goto(addr02da);
                  }
               }
               §§goto(addr02d4);
            }
            §§goto(addr0273);
         }
         addr02da:
      }
   }
}

