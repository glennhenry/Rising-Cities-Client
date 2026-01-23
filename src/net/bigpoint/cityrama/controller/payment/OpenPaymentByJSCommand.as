package net.bigpoint.cityrama.controller.payment
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenPaymentByJSCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenPaymentByJSCommand()
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
         var note:INotification;
         var category:String;
         var paymentRequest:URLRequest;
         var catString:String;
         var flashVarProxy:FlashVarsProxy;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc5_ && _loc2_))
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr0043:
                     §§push(null);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§pop().§§slot[4] = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              addr006a:
                              §§pop().§§slot[1] = param1;
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    addr008e:
                                    §§pop().§§slot[2] = note.getBody() as String;
                                    addr0083:
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr00a0:
                                       flashVarProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
                                       addr009e:
                                    }
                                    addr014b:
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       var _loc3_:* = §§pop().§§slot[2];
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          §§push(CityTreasuryProxy.PAYMENT_CATEGORY_STARTER);
                                          if(_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      addr0191:
                                                      §§push(0);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr01a8:
                                                      §§push(1);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr01c8);
                                                }
                                                else
                                                {
                                                   §§goto(addr01a4);
                                                }
                                             }
                                             addr01a4:
                                             §§goto(addr01a3);
                                          }
                                          addr01a3:
                                          if(CityTreasuryProxy.PAYMENT_CATEGORY_CASH_FOR_ACTION === _loc3_)
                                          {
                                             §§goto(addr01a8);
                                          }
                                          else
                                          {
                                             §§push(2);
                                          }
                                          addr01c8:
                                          switch(§§pop())
                                          {
                                             case 0:
                                             case 1:
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push("&");
                                                   if(_loc4_)
                                                   {
                                                      §§push(category);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§pop().§§slot[4] = §§pop();
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr013b:
                                                               §§pop().§§slot[4] = §§pop();
                                                               if(_loc4_)
                                                               {
                                                               }
                                                            }
                                                            try
                                                            {
                                                               addr01e0:
                                                               paymentRequest = new URLRequest(flashVarProxy.paymentURL + catString);
                                                               if(!(_loc5_ && Boolean(this)))
                                                               {
                                                                  navigateToURL(paymentRequest,"_blank");
                                                               }
                                                               break;
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  Alert.show("PHP CALL","error only website");
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr013a:
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr013b);
                                                      }
                                                      else
                                                      {
                                                         addr0139:
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   §§goto(addr013a);
                                                }
                                                §§goto(addr01e0);
                                             default:
                                                §§push(§§newactivation());
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   §§push("&");
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr0139);
                                                      §§push(CityTreasuryProxy.PAYMENT_CATEGORY_DEFAULT);
                                                   }
                                                   §§goto(addr013a);
                                                }
                                                §§goto(addr01e0);
                                          }
                                          return;
                                       }
                                       §§goto(addr0191);
                                    }
                                    §§goto(addr01e0);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr014b);
            }
            §§goto(addr0043);
         }
         §§goto(addr006a);
      }
   }
}

