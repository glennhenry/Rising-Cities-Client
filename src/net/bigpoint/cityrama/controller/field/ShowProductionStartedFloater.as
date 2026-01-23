package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowProductionStartedFloater extends SimpleCommand implements ICommand
   {
      
      public function ShowProductionStartedFloater()
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
         var _temp_1:* = true;
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = _temp_1;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc11_:ConfigOutputDTO = null;
         var _loc2_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:ProductionFieldObjectVo = _loc3_.pro;
         var _loc5_:ProductionGoodObjectVo = _loc3_.good;
         var _loc6_:ProductionFieldObject = _loc2_.getBillboardById(_loc4_.buildingDTO.id) as ProductionFieldObject;
         §§push(_loc6_ == null);
         if(!(_loc20_ && Boolean(_loc3_)))
         {
            §§push(!§§pop());
            if(!_loc20_)
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(!_loc20_)
                  {
                     addr0096:
                     §§pop();
                     if(!_loc20_)
                     {
                        §§goto(addr00b0);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00b0);
            }
            §§goto(addr0096);
         }
         addr00b0:
         §§push(_loc5_ == null);
         if(_loc21_ || Boolean(this))
         {
            addr00af:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr00b4:
            _loc7_ = null;
            for each(_loc8_ in _loc6_.billboardObjectVo.configPlayfieldItemVo.activePhases)
            {
               if(_loc8_.phaseType != ServerPhaseTypes.PRODUCTION)
               {
                  continue;
               }
               if(!(_loc20_ && Boolean(_loc2_)))
               {
                  var _loc14_:int = 0;
                  if(!(_loc20_ && Boolean(_loc2_)))
                  {
                     for each(_loc9_ in _loc8_.listEntryOutputs)
                     {
                        §§push(_loc9_.goodConfig);
                        if(_loc21_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc20_ && Boolean(this)))
                              {
                                 addr014c:
                                 if(_loc9_.goodConfig.id != _loc5_.config.id)
                                 {
                                    continue;
                                 }
                                 if(_loc20_)
                                 {
                                    continue;
                                 }
                              }
                              var _loc16_:int = 0;
                              if(!(_loc20_ && Boolean(this)))
                              {
                                 for each(_loc10_ in _loc6_.billboardObjectVo.configPlayfieldItemVo.activePhases)
                                 {
                                    §§push(_loc10_.phaseOrderId);
                                    if(_loc21_)
                                    {
                                       if(§§pop() != _loc8_.phaseOrderId - 1)
                                       {
                                          continue;
                                       }
                                       if(_loc20_ && Boolean(param1))
                                       {
                                          continue;
                                       }
                                       §§push(0);
                                    }
                                    var _loc18_:* = §§pop();
                                    if(!(_loc20_ && Boolean(_loc2_)))
                                    {
                                       for each(_loc11_ in _loc10_.listEntryOutputs)
                                       {
                                          §§push(_loc11_.resourceConfig);
                                          if(_loc21_)
                                          {
                                             §§push(§§pop());
                                             if(_loc21_)
                                             {
                                                var _temp_16:* = §§pop();
                                                §§push(_temp_16);
                                                if(_temp_16)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      addr01f2:
                                                      §§pop();
                                                      if(!_loc20_)
                                                      {
                                                         addr0206:
                                                         addr01fe:
                                                         if(_loc11_.resourceConfig.type != ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc7_ = _loc10_;
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr0206);
                                             }
                                             §§goto(addr01f2);
                                          }
                                          §§goto(addr01fe);
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr014c);
                     }
                  }
                  if(_loc21_)
                  {
                     if(_loc7_ == null)
                     {
                        continue;
                     }
                     if(!_loc21_)
                     {
                        continue;
                     }
                  }
                  (_loc6_ as BillboardObject).billboardObjectVo.informationFloaterPhase = _loc7_;
                  if(!(_loc20_ && Boolean(this)))
                  {
                     (_loc6_ as BillboardObject).invalidateInformationFloaterManager();
                     if(!_loc20_)
                     {
                        if(!OptionsGlobalVariables.getInstance().showDropIcons)
                        {
                           continue;
                        }
                        if(!_loc21_)
                        {
                           continue;
                        }
                     }
                     addr028c:
                     if(_loc7_ == null)
                     {
                        continue;
                     }
                     if(!(_loc21_ || Boolean(this)))
                     {
                        continue;
                     }
                  }
                  facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                     "tO":_loc6_,
                     "cP":_loc7_
                  });
                  continue;
               }
               §§goto(addr028c);
            }
         }
      }
   }
}

