package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldStackNeedSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldStackNeedSuccessCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc5_:Boolean = false;
         var _loc7_:NeedStackDTO = null;
         var _loc8_:ConfigNeedDTO = null;
         var _loc9_:ConfigNeedStackDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ShopFieldObject = ShopFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc6_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc10_:int = 0;
         var _loc11_:* = _loc4_.shopFieldObjectVo.sellableNeedStack;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc11_,_loc10_));
            if(_loc15_ && Boolean(param1))
            {
               break;
            }
            if(§§pop())
            {
               _loc7_ = §§nextvalue(_loc10_,_loc11_);
               if(_loc7_.configId == _loc2_.json.s)
               {
                  if(_loc14_)
                  {
                     _loc7_.amount = _loc2_.json.a;
                     if(_loc15_)
                     {
                        continue;
                     }
                  }
                  _loc5_ = true;
               }
               continue;
            }
            if(!(_loc15_ && Boolean(param1)))
            {
               if(_loc14_ || Boolean(_loc2_))
               {
                  if(!_loc15_)
                  {
                     §§push(_loc5_);
                     if(_loc14_ || Boolean(_loc2_))
                     {
                        if(!§§pop())
                        {
                           if(_loc14_)
                           {
                              _loc10_ = 0;
                              if(_loc14_)
                              {
                                 addr012a:
                                 _loc11_ = _loc4_.shopFieldObjectVo.possibleNeedSatisfier;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc11_,_loc10_));
                                    break loop0;
                                 }
                                 addr01c9:
                                 addr01c2:
                              }
                              if(_loc14_ || Boolean(_loc3_))
                              {
                                 §§goto(addr01db);
                              }
                              §§goto(addr0232);
                           }
                           §§goto(addr0222);
                        }
                        addr01db:
                        §§goto(addr01dd);
                     }
                     addr01dd:
                     if(!_loc5_)
                     {
                        if(!_loc15_)
                        {
                           §§goto(addr01e7);
                        }
                        addr0232:
                        _loc6_.updateShop((_loc4_ as ShopFieldObject).shopFieldObjectVo);
                     }
                     else
                     {
                        _loc4_.invalidateIconStateManager();
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           addr0222:
                           sendNotification(ApplicationNotificationConstants.NEED_BUILDING_DATA_CHANGED);
                           if(!_loc15_)
                           {
                              §§goto(addr0232);
                           }
                        }
                     }
                     return;
                  }
                  addr01e7:
                  throw new RamaCityError("ServerMessagePlayfieldStackNeedSuccessCommand Need Stack not found");
               }
               §§goto(addr012a);
            }
            §§goto(addr01c9);
         }
         while(§§pop())
         {
            _loc8_ = §§nextvalue(_loc10_,_loc11_);
            if(!_loc15_)
            {
               var _loc12_:int = 0;
               if(!(_loc15_ && Boolean(_loc3_)))
               {
                  for each(_loc9_ in _loc8_.requiredGoods)
                  {
                     if(_loc9_.id == _loc2_.json.s)
                     {
                        if(_loc14_)
                        {
                           _loc4_.shopFieldObjectVo.sellableNeedStack.push(new NeedStackDTO({
                              "cid":_loc9_.id,
                              "a":_loc2_.json.a
                           }));
                           if(_loc14_)
                           {
                              _loc5_ = true;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr01c2);
         }
         §§goto(addr01c9);
      }
   }
}

