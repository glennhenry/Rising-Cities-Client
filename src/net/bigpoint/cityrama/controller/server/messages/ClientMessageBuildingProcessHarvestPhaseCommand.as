package net.bigpoint.cityrama.controller.server.messages
{
   import flash.net.SharedObject;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.RandomHarvestPhaseDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingProcessHarvestPhaseCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingProcessHarvestPhaseCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc38_:Boolean = false;
         var _loc39_:Boolean = _temp_1;
         var _loc4_:* = false;
         var _loc5_:ServerCommunicationProxy = null;
         var _loc6_:Object = null;
         var _loc7_:PlayfieldObjectsProxy = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:* = null;
         var _loc11_:PhaseDTO = null;
         var _loc12_:MessageVo = null;
         var _loc13_:ProductionFieldObjectVo = null;
         var _loc14_:SharedObject = null;
         var _loc15_:Vector.<ProductionGoodObjectVo> = null;
         var _loc16_:ProductionGoodObjectVo = null;
         var _loc17_:ProductionGoodObjectVo = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = false;
         var _loc21_:* = null;
         var _loc22_:ConfigOutputDTO = null;
         var _loc23_:* = false;
         var _loc24_:NeedVo = null;
         var _loc25_:ConfigPhaseDTO = null;
         var _loc26_:ConfigResourceDTO = null;
         var _loc27_:Object = null;
         var _loc28_:ConfigOutputDTO = null;
         var _loc29_:RandomHarvestPhaseDTO = null;
         var _loc30_:ConfigOutputDTO = null;
         var _loc31_:ConfigOutputDTO = null;
         var _loc32_:Object = null;
         var _loc33_:ConfigOutputDTO = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:BillboardObjectVo = _loc2_.vo;
         if(!(_loc38_ && Boolean(_loc2_)))
         {
            if(_loc3_)
            {
               if(_loc39_ || Boolean(this))
               {
                  addr00de:
                  §§push(false);
                  if(_loc39_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc38_)
                     {
                        §§goto(addr00ed);
                     }
                     §§goto(addr00fc);
                  }
                  §§goto(addr0102);
               }
               addr00ed:
               if(_loc2_.silent)
               {
                  if(_loc39_)
                  {
                     addr0102:
                     _loc4_ = Boolean(_loc2_.silent);
                     addr00fc:
                  }
               }
               _loc5_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc6_ = new Object();
               _loc6_.bid = _loc3_.buildingDTO.id;
               _loc7_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
               _loc8_ = _loc7_.getBillboardById(_loc6_.bid);
               if(_loc39_ || Boolean(param1))
               {
                  §§push(_loc3_ is ResidentialFieldObjectVo);
                  if(_loc39_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc39_)
                        {
                           §§push(ServerPhaseTypes.RESIDENTIAL);
                           if(_loc39_)
                           {
                              §§push(§§pop());
                              if(!(_loc38_ && Boolean(this)))
                              {
                                 _loc10_ = §§pop();
                                 if(!(_loc39_ || Boolean(_loc3_)))
                                 {
                                    addr01dc:
                                    §§push(_loc3_ is ScheduledDropFieldObjectVo);
                                    if(!(_loc38_ && Boolean(_loc2_)))
                                    {
                                       addr01ef:
                                       if(§§pop())
                                       {
                                          if(!(_loc38_ && Boolean(this)))
                                          {
                                             §§push(ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                                             if(!(_loc38_ && Boolean(_loc2_)))
                                             {
                                                addr0215:
                                                §§push(§§pop());
                                             }
                                             _loc10_ = §§pop();
                                             if(_loc38_)
                                             {
                                                addr022b:
                                                _loc13_ = _loc3_ as ProductionFieldObjectVo;
                                                if(!_loc38_)
                                                {
                                                   §§push(ServerPhaseTypes.PRODUCTION);
                                                   if(_loc39_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   _loc10_ = §§pop();
                                                }
                                                _loc14_ = SharedObject.getLocal(OptionsMenuProxy.NAME);
                                                if(_loc14_)
                                                {
                                                   _loc15_ = MainLayerProxy(facade.retrieveProxy(MainLayerProxy.NAME)).getProductionOptions(_loc13_);
                                                   for each(_loc17_ in _loc15_)
                                                   {
                                                      if(_loc17_.config.id == _loc13_.currentGoodInProduction.id)
                                                      {
                                                         _loc16_ = _loc17_;
                                                         break;
                                                      }
                                                   }
                                                   if(_loc39_ || Boolean(param1))
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         if(!_loc38_)
                                                         {
                                                            addr02d4:
                                                            _loc14_.data[_loc13_.buildingDTO.id] = _loc15_.indexOf(_loc16_);
                                                         }
                                                      }
                                                      §§goto(addr02eb);
                                                   }
                                                   §§goto(addr02d4);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr0227:
                                          if(_loc3_ is ProductionFieldObjectVo)
                                          {
                                             §§goto(addr022b);
                                          }
                                       }
                                       §§goto(addr02eb);
                                    }
                                    §§goto(addr0227);
                                 }
                                 §§goto(addr02eb);
                              }
                           }
                           §§goto(addr0215);
                        }
                        §§goto(addr022b);
                     }
                     else
                     {
                        §§push(_loc3_ is TownHallFieldObjectVo);
                        if(!(_loc38_ && Boolean(_loc3_)))
                        {
                           var _temp_73:* = §§pop();
                           §§push(_temp_73);
                           if(!_temp_73)
                           {
                              if(!(_loc38_ && Boolean(param1)))
                              {
                                 §§pop();
                                 if(!(_loc38_ && Boolean(this)))
                                 {
                                    §§goto(addr01dc);
                                 }
                                 §§goto(addr022b);
                              }
                              §§goto(addr0227);
                           }
                        }
                     }
                  }
                  §§goto(addr01ef);
               }
               addr02eb:
               var _loc34_:int = 0;
               if(_loc39_)
               {
                  loop1:
                  for each(_loc11_ in _loc3_.buildingDTO.activePhases)
                  {
                     §§push(_loc11_.config);
                     if(_loc39_ || Boolean(_loc3_))
                     {
                        if(§§pop().phaseType != _loc10_)
                        {
                           continue;
                        }
                        if(!_loc38_)
                        {
                           _loc6_.pid = _loc11_.phaseId;
                        }
                        §§push(_loc11_.config);
                     }
                     _loc9_ = §§pop();
                     if(!(_loc38_ && Boolean(_loc3_)))
                     {
                        §§push(_loc10_);
                        if(_loc39_ || Boolean(_loc2_))
                        {
                           §§push(ServerPhaseTypes.RESIDENTIAL);
                           if(!_loc38_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc39_ || Boolean(param1))
                                 {
                                    §§push((_loc8_ as ResidentialFieldObject).residentialFieldObjectVo.currentResidentType);
                                    if(!(_loc38_ && Boolean(_loc3_)))
                                    {
                                       addr0398:
                                       §§push(§§pop());
                                       if(!_loc38_)
                                       {
                                          addr039f:
                                          _loc18_ = §§pop();
                                          if(!_loc38_)
                                          {
                                             _loc21_ = "";
                                             if(!_loc38_)
                                             {
                                                addr03b1:
                                                var _loc36_:* = 0;
                                                for each(_loc22_ in _loc11_.config.listEntryOutputs)
                                                {
                                                   §§push(_loc22_.resourceConfig);
                                                   if(_loc39_ || Boolean(param1))
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc39_)
                                                      {
                                                         §§push(_loc22_.resourceConfig);
                                                         if(_loc39_ || Boolean(param1))
                                                         {
                                                            addr03fd:
                                                            §§push(§§pop().type);
                                                            if(!_loc38_)
                                                            {
                                                               if(§§pop() != ServerResConst.RESOURCE_EXPERIENCE)
                                                               {
                                                                  if(_loc39_ || Boolean(this))
                                                                  {
                                                                     addr0421:
                                                                     addr041c:
                                                                     §§push(_loc22_.resourceConfig.type);
                                                                     if(_loc39_)
                                                                     {
                                                                        addr0429:
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc19_ = §§pop();
                                                                  }
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr0429);
                                                         }
                                                         §§goto(addr0421);
                                                      }
                                                      §§goto(addr041c);
                                                   }
                                                   §§goto(addr03fd);
                                                }
                                                if(!_loc38_)
                                                {
                                                   if(_loc39_ || Boolean(param1))
                                                   {
                                                      §§push(_loc18_);
                                                      if(_loc39_ || Boolean(_loc2_))
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            _loc36_ = §§pop();
                                                            if(!(_loc38_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(ServerResConst.RESOURCE_RICHMEN);
                                                               if(!_loc38_)
                                                               {
                                                                  §§push(_loc36_);
                                                                  if(_loc39_ || Boolean(_loc2_))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc39_)
                                                                        {
                                                                           addr05eb:
                                                                           §§push(0);
                                                                           if(_loc38_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0624:
                                                                           §§push(1);
                                                                           if(_loc38_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(ServerResConst.RESOURCE_ACADEMICS);
                                                                        if(_loc39_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(_loc36_);
                                                                           if(!_loc38_)
                                                                           {
                                                                              addr0612:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc38_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§goto(addr0624);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr063b:
                                                                                    §§push(2);
                                                                                    if(_loc39_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr0653:
                                                                                 if(!(_loc39_ || Boolean(param1)))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       §§push(_loc19_);
                                                                                       if(_loc39_)
                                                                                       {
                                                                                          §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                                                          if(!_loc38_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(_loc39_)
                                                                                                {
                                                                                                   §§push(true);
                                                                                                   if(_loc39_)
                                                                                                   {
                                                                                                      _loc20_ = §§pop();
                                                                                                      if(!(_loc38_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                                                                         if(!(_loc38_ && Boolean(param1)))
                                                                                                         {
                                                                                                            addr049b:
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc38_)
                                                                                                            {
                                                                                                               _loc21_ = §§pop();
                                                                                                               if(!(_loc39_ || Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  addr0573:
                                                                                                                  §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                                                                  if(_loc38_ && Boolean(param1))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc38_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr058d:
                                                                                                                  _loc21_ = §§pop();
                                                                                                                  if(_loc39_ || Boolean(this))
                                                                                                                  {
                                                                                                                     addr067a:
                                                                                                                     §§push(_loc20_);
                                                                                                                     if(_loc39_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc39_)
                                                                                                                        {
                                                                                                                           addr0691:
                                                                                                                           var _temp_39:* = §§pop();
                                                                                                                           §§push(_temp_39);
                                                                                                                           if(_temp_39)
                                                                                                                           {
                                                                                                                              if(!(_loc38_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 addr06a4:
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc38_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    addr06b5:
                                                                                                                                    addr06b3:
                                                                                                                                    §§push(_loc21_ == "");
                                                                                                                                    if(!(_loc38_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       if(!_loc38_)
                                                                                                                                       {
                                                                                                                                          addr06cd:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr09ba:
                                                                                                                                             addr09c3:
                                                                                                                                             if(_loc39_)
                                                                                                                                             {
                                                                                                                                                addr06d7:
                                                                                                                                                §§push(0);
                                                                                                                                                break loop6;
                                                                                                                                             }
                                                                                                                                             if(OptionsGlobalVariables.getInstance().showDropIcons)
                                                                                                                                             {
                                                                                                                                                if(!_loc38_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          addr0994:
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(_loc39_)
                                                                                                                                          {
                                                                                                                                             addr099c:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             if(!(_loc39_ || Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             addr09ae:
                                                                                                                                             _loc3_.informationFloaterPhase = _loc9_;
                                                                                                                                             if(!_loc39_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr09ba);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr09c3);
                                                                                                                                 }
                                                                                                                                 §§goto(addr09ba);
                                                                                                                              }
                                                                                                                              §§goto(addr099c);
                                                                                                                           }
                                                                                                                           §§goto(addr06cd);
                                                                                                                        }
                                                                                                                        §§goto(addr06a4);
                                                                                                                     }
                                                                                                                     §§goto(addr0691);
                                                                                                                  }
                                                                                                                  §§goto(addr09ae);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0545:
                                                                                                               addr054a:
                                                                                                               if(§§pop() != ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                                                                                                               {
                                                                                                                  if(_loc39_ || Boolean(this))
                                                                                                                  {
                                                                                                                     addr055c:
                                                                                                                     §§push(true);
                                                                                                                     if(!(_loc38_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        addr056b:
                                                                                                                        _loc20_ = §§pop();
                                                                                                                        if(_loc39_)
                                                                                                                        {
                                                                                                                           §§goto(addr0573);
                                                                                                                        }
                                                                                                                        §§goto(addr067a);
                                                                                                                     }
                                                                                                                     §§goto(addr0691);
                                                                                                                  }
                                                                                                                  §§goto(addr0573);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr067a);
                                                                                                         }
                                                                                                         §§goto(addr0545);
                                                                                                      }
                                                                                                      §§goto(addr055c);
                                                                                                   }
                                                                                                   §§goto(addr056b);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr067a);
                                                                                          }
                                                                                          §§goto(addr054a);
                                                                                       }
                                                                                       §§goto(addr049b);
                                                                                    case 1:
                                                                                       §§push(_loc19_);
                                                                                       if(_loc39_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                                          if(_loc39_ || Boolean(param1))
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(_loc38_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(true);
                                                                                                if(!(_loc38_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   _loc20_ = §§pop();
                                                                                                   if(!(_loc39_ || Boolean(this)))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                                                   if(!(_loc38_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc39_ || Boolean(this))
                                                                                                      {
                                                                                                         _loc21_ = §§pop();
                                                                                                         if(!_loc38_)
                                                                                                         {
                                                                                                            §§goto(addr067a);
                                                                                                         }
                                                                                                         §§goto(addr06d7);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr0545);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr058d);
                                                                                                }
                                                                                                §§goto(addr09c3);
                                                                                             }
                                                                                             §§goto(addr067a);
                                                                                          }
                                                                                          §§goto(addr054a);
                                                                                       }
                                                                                       §§goto(addr0545);
                                                                                    case 2:
                                                                                       §§push(_loc19_);
                                                                                       if(!_loc38_)
                                                                                       {
                                                                                          §§goto(addr0545);
                                                                                       }
                                                                                       §§goto(addr06b5);
                                                                                    default:
                                                                                       §§goto(addr067a);
                                                                                 }
                                                                                 facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                                                                    "tO":_loc8_,
                                                                                    "cP":_loc9_
                                                                                 });
                                                                                 continue loop1;
                                                                              }
                                                                              addr0637:
                                                                              addr0635:
                                                                              if(ServerResConst.RESOURCE_WORKERS === _loc36_)
                                                                              {
                                                                                 §§goto(addr063b);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(3);
                                                                              }
                                                                              §§goto(addr0653);
                                                                              §§goto(addr063b);
                                                                           }
                                                                           §§goto(addr0637);
                                                                        }
                                                                        §§goto(addr0635);
                                                                     }
                                                                     §§goto(addr0653);
                                                                  }
                                                                  §§goto(addr0612);
                                                               }
                                                               §§goto(addr0635);
                                                            }
                                                            §§goto(addr05eb);
                                                         }
                                                         addr06db:
                                                         for each(_loc24_ in (_loc8_ as ResidentialFieldObject).residentialFieldObjectVo.residentialNeeds)
                                                         {
                                                            §§push(_loc24_.isSatisfied);
                                                            if(_loc39_ || Boolean(_loc2_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc38_ && Boolean(this))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(true);
                                                            }
                                                            _loc23_ = §§pop();
                                                            break;
                                                         }
                                                         if(!(_loc38_ && Boolean(_loc2_)))
                                                         {
                                                            if(_loc23_)
                                                            {
                                                               addr0743:
                                                               _loc25_ = _loc11_.config.clone();
                                                               _loc26_ = this.getConfigResourceDTO(_loc21_);
                                                               _loc27_ = new Object();
                                                               _loc27_.t = ServerOutputConstants.RESOURCE;
                                                               if(_loc39_)
                                                               {
                                                                  _loc27_.o = InformationFloaterManager.EMPTY_RESOURCE_AMOUNT;
                                                                  if(_loc39_)
                                                                  {
                                                                     addr0789:
                                                                     _loc27_.cid = _loc26_.id;
                                                                  }
                                                                  _loc28_ = new ConfigOutputDTO(_loc27_);
                                                                  _loc28_.resourceConfig = _loc26_;
                                                                  if(_loc39_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc25_.listEntryOutputs.push(_loc28_);
                                                                  }
                                                                  _loc9_ = _loc25_;
                                                                  §§goto(addr0994);
                                                               }
                                                               §§goto(addr0789);
                                                            }
                                                            §§goto(addr0994);
                                                         }
                                                         §§goto(addr0743);
                                                      }
                                                      §§goto(addr06b5);
                                                   }
                                                   §§goto(addr06b3);
                                                }
                                                §§goto(addr06db);
                                             }
                                             else
                                             {
                                                addr07ed:
                                                addr07f4:
                                                addr07fa:
                                                §§push(_loc11_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                                                if(_loc39_ || Boolean(param1))
                                                {
                                                   var _temp_60:* = §§pop();
                                                   §§push(_temp_60);
                                                   if(_temp_60)
                                                   {
                                                      if(_loc39_)
                                                      {
                                                         addr0814:
                                                         §§pop();
                                                         if(!_loc38_)
                                                         {
                                                            addr0821:
                                                            addr081b:
                                                            if(_loc11_ is RandomHarvestPhaseDTO)
                                                            {
                                                               addr0825:
                                                               _loc29_ = _loc11_ as RandomHarvestPhaseDTO;
                                                               if(!(_loc38_ && Boolean(_loc2_)))
                                                               {
                                                                  ConfigFactory.buildRandomHarvestPhaseDTO(_loc29_);
                                                               }
                                                               _loc9_ = new ConfigPhaseDTO(new Object());
                                                               if(_loc39_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc38_)
                                                                  {
                                                                     _loc36_ = §§pop();
                                                                     if(!_loc38_)
                                                                     {
                                                                        var _loc37_:* = _loc29_.rewards;
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc37_,_loc36_));
                                                                           if(_loc38_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              _loc30_ = §§nextvalue(_loc36_,_loc37_);
                                                                              if(!_loc38_)
                                                                              {
                                                                                 _loc9_.listEntryOutputs.push(_loc30_);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(_loc39_)
                                                                           {
                                                                              if(!(_loc38_ && Boolean(param1)))
                                                                              {
                                                                                 addr08b8:
                                                                                 if(!_loc38_)
                                                                                 {
                                                                                    addr08c2:
                                                                                    _loc36_ = 0;
                                                                                    if(_loc39_)
                                                                                    {
                                                                                       addr08ca:
                                                                                       _loc37_ = _loc11_.config.listEntryOutputs;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc37_,_loc36_));
                                                                                          break loop2;
                                                                                       }
                                                                                       addr0990:
                                                                                       addr0989:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0994);
                                                                              }
                                                                              §§goto(addr08ca);
                                                                           }
                                                                           §§goto(addr0990);
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           _loc33_ = §§nextvalue(_loc36_,_loc37_);
                                                                           §§push(_loc33_.resourceConfig);
                                                                           if(!(_loc38_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc38_ && Boolean(this)))
                                                                              {
                                                                                 var _temp_66:* = §§pop();
                                                                                 §§push(_temp_66);
                                                                                 if(_temp_66)
                                                                                 {
                                                                                    if(_loc39_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc38_)
                                                                                       {
                                                                                          addr0922:
                                                                                          addr091a:
                                                                                          if(_loc33_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE)
                                                                                          {
                                                                                             addr0926:
                                                                                             _loc32_ = new Object();
                                                                                             _loc32_.t = _loc33_.type;
                                                                                             if(!_loc38_)
                                                                                             {
                                                                                                _loc32_.cid = _loc33_.configId;
                                                                                                if(_loc39_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr0957:
                                                                                                   _loc32_.o = this.calculatedOutputAmount(_loc33_);
                                                                                                }
                                                                                                _loc31_ = new ConfigOutputDTO(_loc32_);
                                                                                                _loc31_.resourceConfig = _loc33_.resourceConfig;
                                                                                                if(!_loc38_)
                                                                                                {
                                                                                                   _loc9_.listEntryOutputs.push(_loc31_);
                                                                                                }
                                                                                                §§goto(addr0989);
                                                                                             }
                                                                                             §§goto(addr0957);
                                                                                          }
                                                                                          §§goto(addr0989);
                                                                                       }
                                                                                       §§goto(addr0926);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr0922);
                                                                           }
                                                                           §§goto(addr091a);
                                                                        }
                                                                        §§goto(addr0990);
                                                                     }
                                                                     §§goto(addr08b8);
                                                                  }
                                                                  §§goto(addr08c2);
                                                               }
                                                            }
                                                            §§goto(addr0994);
                                                         }
                                                         §§goto(addr0825);
                                                      }
                                                   }
                                                   §§goto(addr0821);
                                                }
                                                §§goto(addr0814);
                                             }
                                          }
                                          §§goto(addr07ed);
                                       }
                                       §§goto(addr07f4);
                                    }
                                    §§goto(addr039f);
                                 }
                                 §§goto(addr0825);
                              }
                              else
                              {
                                 §§push(_loc10_);
                                 if(!(_loc38_ && Boolean(_loc3_)))
                                 {
                                    §§push(ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                                    if(_loc39_)
                                    {
                                       addr07e3:
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc39_)
                                          {
                                             §§goto(addr07ed);
                                          }
                                          §§goto(addr081b);
                                       }
                                       §§goto(addr0994);
                                    }
                                    §§goto(addr07fa);
                                 }
                              }
                              §§goto(addr07f4);
                           }
                           §§goto(addr07e3);
                        }
                        §§goto(addr0398);
                     }
                     §§goto(addr03b1);
                  }
               }
               _loc12_ = _loc5_.createMessage(_loc6_,ServerMessageConstants.PLAYFIELD_BUILDING_PROCESSPHASE);
               if(!(_loc38_ && Boolean(_loc3_)))
               {
                  _loc5_.sendMessage(_loc12_);
               }
               §§goto(addr0a22);
            }
            addr0a22:
            return;
         }
         §§goto(addr00de);
      }
      
      private function calculatedOutputAmount(param1:ConfigOutputDTO) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         §§push(param1.outputAmount);
         if(_loc4_ || Boolean(param1))
         {
            §§push(§§pop() * Math.pow(_loc2_.userLevel,param1.multiplier));
            if(!(_loc5_ && Boolean(param1)))
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc3_);
            if(!(_loc5_ && Boolean(param1)))
            {
               §§push(100);
               if(!_loc5_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(RandomUtilities.getSignificantDigits(_loc3_,2));
                        if(!_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc4_ || Boolean(this))
                           {
                              _loc3_ = §§pop();
                              if(_loc5_ && _loc3_)
                              {
                              }
                              addr00ea:
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 addr00f1:
                                 addr00f3:
                                 if(§§pop() < 1)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr00fd);
                                    }
                                 }
                                 §§goto(addr0107);
                              }
                           }
                        }
                        §§goto(addr0106);
                     }
                     §§goto(addr0107);
                  }
                  else
                  {
                     §§push(Math.round(_loc3_ * 0.2) * 5);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc5_)
                           {
                              §§goto(addr00ea);
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr00f1);
                     }
                  }
                  §§goto(addr0106);
               }
               §§goto(addr00f3);
            }
            §§goto(addr00f1);
         }
         addr00fd:
         §§push(1);
         if(_loc4_)
         {
            addr0106:
            _loc3_ = §§pop();
            addr0107:
            return _loc3_;
         }
      }
      
      private function getConfigResourceDTO(param1:String) : ConfigResourceDTO
      {
         var _loc2_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc3_:Number = Number(_loc2_.resourcesIds[param1]);
         return _loc2_.resources[_loc3_];
      }
   }
}

