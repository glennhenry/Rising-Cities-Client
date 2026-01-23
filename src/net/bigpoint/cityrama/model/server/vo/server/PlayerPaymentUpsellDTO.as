package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class PlayerPaymentUpsellDTO
   {
      
      private var _id:Number;
      
      private var _type:String;
      
      private var _startTime:Number;
      
      private var _duration:Number;
      
      public function PlayerPaymentUpsellDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this._id = param1.id;
               if(_loc2_ || _loc3_)
               {
                  addr0057:
                  this._type = param1.c;
                  if(!_loc3_)
                  {
                     addr0066:
                     this._startTime = param1.st;
                     if(_loc2_)
                     {
                        addr0075:
                        this._duration = param1.d;
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0075);
               }
               addr007f:
               return;
            }
            §§goto(addr0066);
         }
         §§goto(addr0057);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get startTime() : Number
      {
         return this._startTime;
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function get discount() : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = this.type;
         if(_loc2_)
         {
            §§push(ServerTagConstants.PAYMENT_UPSELL);
            if(!_loc3_)
            {
               §§push(_loc1_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc3_ && _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr0120:
                        §§push(3);
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr0137);
                  }
                  else
                  {
                     §§push(ServerTagConstants.PAYMENT_REACTIVATION);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00ab:
                        §§push(_loc1_);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr00ca:
                                 §§push(1);
                                 if(_loc2_ || Boolean(this))
                                 {
                                 }
                              }
                              else
                              {
                                 addr010b:
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerTagConstants.PAYMENT_NON_PAY);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00ef:
                                 §§push(_loc1_);
                                 if(_loc2_)
                                 {
                                    addr00f5:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr010b);
                                       }
                                       else
                                       {
                                          §§goto(addr0120);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr011c);
                                    }
                                    §§goto(addr0120);
                                 }
                                 addr011c:
                                 §§goto(addr011b);
                              }
                              addr011b:
                              if(ServerTagConstants.PAYMENT_NEW_NON_PAY === _loc1_)
                              {
                                 §§goto(addr0120);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr0137);
                           }
                           addr0137:
                           if(!_loc3_)
                           {
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(0.2);
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    break;
                                 case 1:
                                    §§push(0.3);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       return §§pop();
                                    }
                                    break;
                                 case 2:
                                 case 3:
                                    return 0.6;
                                 default:
                                    return 0;
                              }
                              return §§pop();
                           }
                           return §§pop();
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr00ef);
                  }
               }
               §§goto(addr011c);
            }
            §§goto(addr00ab);
         }
         §§goto(addr00ca);
      }
   }
}

