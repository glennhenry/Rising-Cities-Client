package org.puremvc.as3.patterns.observer
{
   import org.puremvc.as3.interfaces.*;
   
   public class Notification implements INotification
   {
      
      private var body:Object;
      
      private var name:String;
      
      private var type:String;
      
      public function Notification(param1:String, param2:Object = null, param3:String = null)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            super();
            if(_loc4_)
            {
               this.name = param1;
               if(!(_loc5_ && Boolean(param3)))
               {
                  this.body = param2;
                  if(_loc4_)
                  {
                     addr0058:
                     this.type = param3;
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      public function setBody(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.body = param1;
         }
      }
      
      public function getName() : String
      {
         return name;
      }
      
      public function toString() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push("Notification Name: ");
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop() + getName());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push("\nBody:");
               if(!(_loc2_ && _loc3_))
               {
                  if(body == null)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        §§push("null");
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0092:
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    _loc1_ = §§pop();
                                    if(!_loc2_)
                                    {
                                       addr00ba:
                                       §§push(_loc1_);
                                       if(!_loc2_)
                                       {
                                          §§push("\nType:");
                                          if(!_loc2_)
                                          {
                                             addr00c9:
                                             §§push(type);
                                             if(!_loc2_)
                                             {
                                                if(§§pop() == null)
                                                {
                                                   §§goto(addr00f4);
                                                }
                                                else
                                                {
                                                   addr00f1:
                                                   §§push(type);
                                                }
                                                §§goto(addr00f2);
                                             }
                                             §§goto(addr00f1);
                                          }
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr0102);
                                    }
                                    §§goto(addr0103);
                                 }
                                 §§goto(addr0102);
                              }
                              addr00f4:
                              §§goto(addr00f3);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr00c9);
                  }
                  else
                  {
                     §§push(body.toString());
                  }
                  §§goto(addr0092);
               }
               addr00f3:
               if(!_loc2_)
               {
                  addr00f2:
                  addr00e6:
                  addr00e9:
                  §§push(§§pop() + "null");
               }
               §§push(§§pop() + §§pop());
               if(_loc3_ || _loc3_)
               {
                  addr0102:
                  _loc1_ = §§pop();
                  addr0103:
                  return _loc1_;
               }
            }
            §§goto(addr0102);
         }
         §§goto(addr00ba);
      }
      
      public function getType() : String
      {
         return type;
      }
      
      public function setType(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.type = param1;
         }
      }
      
      public function getBody() : Object
      {
         return body;
      }
   }
}

