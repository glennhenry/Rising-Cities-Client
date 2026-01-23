package net.bigpoint.cityrama.controller.boosterpackstore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackDetailMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackListMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackSublevelDetailMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BoosterpackBookContentChangeCommand extends SimpleCommand
   {
      
      public function BoosterpackBookContentChangeCommand()
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
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:int = 0;
         var _loc3_:IngameStoreBook = null;
         var _loc4_:BoosterpackBookProxy = null;
         var _loc5_:BoosterpackListMediator = null;
         var _loc6_:BoosterpackDetailMediator = null;
         var _loc7_:BoosterpackSublevelDetailMediator = null;
         var _loc8_:* = null;
         var _loc9_:BoosterpackVo = null;
         if(!_loc10_)
         {
            if(param1.getBody())
            {
               if(_loc11_ || Boolean(this))
               {
                  sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CLEAN_CONTENT);
                  if(_loc11_ || Boolean(this))
                  {
                     _loc2_ = param1.getBody().content as int;
                  }
               }
               addr0082:
               _loc3_ = param1.getBody().container as IngameStoreBook;
               _loc4_ = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  §§push(param1.getBody().content == null);
                  if(!(_loc10_ && Boolean(this)))
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     if(!_temp_6)
                     {
                        if(_loc11_)
                        {
                           §§pop();
                           if(!_loc10_)
                           {
                              §§goto(addr00e1);
                           }
                           §§goto(addr00e5);
                        }
                     }
                  }
                  addr00e1:
                  §§goto(addr00dd);
               }
               addr00dd:
               if(_loc2_ < 0)
               {
                  addr00e5:
                  _loc5_ = facade.retrieveMediator(BoosterpackListMediator.NAME) as BoosterpackListMediator;
                  if(_loc5_)
                  {
                     if(_loc11_)
                     {
                        facade.removeMediator(BoosterpackListMediator.NAME);
                     }
                  }
                  _loc5_ = new BoosterpackListMediator(_loc3_);
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     facade.registerMediator(_loc5_);
                     if(!(_loc10_ && Boolean(_loc2_)))
                     {
                        addr0150:
                        _loc5_.setData(_loc4_.getBoosterpackVos(BoosterpackBookProxy.ALL));
                     }
                     §§goto(addr02b2);
                  }
                  §§goto(addr0150);
               }
               else
               {
                  _loc6_ = facade.retrieveMediator(BoosterpackDetailMediator.NAME) as BoosterpackDetailMediator;
                  if(_loc6_)
                  {
                     if(_loc11_ || Boolean(this))
                     {
                        facade.removeMediator(BoosterpackDetailMediator.NAME);
                     }
                  }
                  _loc7_ = facade.retrieveMediator(BoosterpackSublevelDetailMediator.NAME) as BoosterpackSublevelDetailMediator;
                  if(_loc7_)
                  {
                     if(_loc11_ || Boolean(param1))
                     {
                        facade.removeMediator(BoosterpackSublevelDetailMediator.NAME);
                        if(!_loc10_)
                        {
                           addr01d1:
                           §§push(BoosterpackBookProxy.ALL);
                           if(_loc11_)
                           {
                              §§push(§§pop());
                              if(_loc11_)
                              {
                                 addr01e4:
                                 _loc8_ = §§pop();
                                 if(_loc11_ || Boolean(_loc2_))
                                 {
                                    if(param1.getBody().type)
                                    {
                                       if(!(_loc10_ && Boolean(_loc2_)))
                                       {
                                          addr021a:
                                          _loc8_ = param1.getBody().type as String;
                                          addr020e:
                                       }
                                    }
                                    §§goto(addr021c);
                                 }
                                 §§goto(addr020e);
                              }
                              §§goto(addr021a);
                           }
                           §§goto(addr01e4);
                        }
                        addr021c:
                        _loc9_ = _loc4_.getBoosterpackVoBySlotId(_loc2_,_loc8_);
                        if(_loc9_.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
                        {
                           _loc7_ = new BoosterpackSublevelDetailMediator(_loc3_);
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              facade.registerMediator(_loc7_);
                              if(!(_loc10_ && Boolean(this)))
                              {
                                 _loc7_.setData(_loc9_);
                                 addr0269:
                              }
                              §§goto(addr02b2);
                           }
                           §§goto(addr0269);
                        }
                        else
                        {
                           _loc6_ = new BoosterpackDetailMediator(_loc3_);
                           if(!(_loc10_ && Boolean(param1)))
                           {
                              facade.registerMediator(_loc6_);
                              if(!_loc10_)
                              {
                                 _loc6_.setData(_loc9_);
                              }
                           }
                        }
                        §§goto(addr02b2);
                     }
                     §§goto(addr020e);
                  }
                  §§goto(addr01d1);
               }
            }
            addr02b2:
            return;
         }
         §§goto(addr0082);
      }
   }
}

