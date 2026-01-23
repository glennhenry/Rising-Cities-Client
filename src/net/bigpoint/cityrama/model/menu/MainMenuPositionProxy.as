package net.bigpoint.cityrama.model.menu
{
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MainMenuPositionProxy extends Proxy
   {
      
      public static const NAME:String = "MainMenuPositionProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "MainMenuPositionProxy";
      }
      
      private var _energyIcon:Point;
      
      private var _realCurrencyIcon:Point;
      
      private var _virtualCurrencyIcon:Point;
      
      private var _populationIcon:Point;
      
      private var _xpIcon:Point;
      
      private var _happynessIcon:Point;
      
      private var _mainmenueInventory:Point;
      
      private var buttonDict:Dictionary;
      
      public function MainMenuPositionProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRegister();
            if(_loc1_)
            {
               this._energyIcon = new Point(0,0);
               if(!(_loc2_ && _loc2_))
               {
                  this._realCurrencyIcon = new Point(0,0);
                  if(_loc1_)
                  {
                     addr0049:
                     this._virtualCurrencyIcon = new Point(0,0);
                     if(_loc1_ || Boolean(this))
                     {
                        addr0062:
                        this._populationIcon = new Point(0,0);
                        if(_loc1_ || Boolean(this))
                        {
                           this._xpIcon = new Point(0,0);
                           if(_loc1_)
                           {
                              addr008c:
                              this._happynessIcon = new Point(0,0);
                              if(_loc1_ || _loc1_)
                              {
                                 this._mainmenueInventory = new Point(0,0);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr0130);
                              }
                           }
                           addr00c8:
                           this.buttonDict = new Dictionary();
                           if(_loc1_ || _loc1_)
                           {
                              addr00de:
                              this.buttonDict[ServerResConst.RESOURCE_REALCURRENCY] = this.getrealCurrencyIcon;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 this.buttonDict[ServerResConst.RESOURCE_VIRTUALCURRENCY] = this.getvirtualCurrencyIcon;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr011a:
                                    this.buttonDict[ServerResConst.RESOURCE_POPULATION] = this.getpopulationIcon;
                                    if(!_loc2_)
                                    {
                                       addr0130:
                                       this.buttonDict[ServerResConst.RESOURCE_HAPPINESS_POSITIVE] = this.gethappynessIcon;
                                       if(_loc1_ || Boolean(this))
                                       {
                                          this.buttonDict[ServerResConst.RESOURCE_ENERGY_POSITIVE] = this.getenergyIcon;
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr0176:
                                             this.buttonDict[ServerResConst.RESOURCE_EXPERIENCE] = this.getxpIcon;
                                             if(_loc1_ || Boolean(this))
                                             {
                                                addr0194:
                                                this.buttonDict[ServerOutputConstants.GOOD] = this.getmainmenueInventory;
                                             }
                                          }
                                          §§goto(addr01a6);
                                       }
                                       §§goto(addr0176);
                                    }
                                    §§goto(addr0194);
                                 }
                                 §§goto(addr0176);
                              }
                              §§goto(addr011a);
                           }
                           addr01a6:
                           return;
                        }
                        §§goto(addr011a);
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr00de);
            }
            §§goto(addr0062);
         }
         §§goto(addr0049);
      }
      
      public function getIconPosition(param1:String) : Point
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Point = null;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(!this.buttonDict.hasOwnProperty(param1))
            {
               addr004d:
               _loc2_ = new Point(0,0);
            }
            else
            {
               _loc2_ = this.buttonDict[param1]();
            }
            return _loc2_;
         }
         §§goto(addr004d);
      }
      
      public function getenergyIcon() : Point
      {
         return this._energyIcon;
      }
      
      public function set energyIcon(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._energyIcon = param1;
         }
      }
      
      public function getrealCurrencyIcon() : Point
      {
         return this._realCurrencyIcon;
      }
      
      public function set realCurrencyIcon(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._realCurrencyIcon = param1;
         }
      }
      
      public function getvirtualCurrencyIcon() : Point
      {
         return this._virtualCurrencyIcon;
      }
      
      public function set virtualCurrencyIcon(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._virtualCurrencyIcon = param1;
         }
      }
      
      public function getpopulationIcon() : Point
      {
         return this._populationIcon;
      }
      
      public function set populationIcon(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._populationIcon = param1;
         }
      }
      
      public function getxpIcon() : Point
      {
         return this._xpIcon;
      }
      
      public function set xpIcon(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._xpIcon = param1;
         }
      }
      
      public function gethappynessIcon() : Point
      {
         return this._happynessIcon;
      }
      
      public function set happynessIcon(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._happynessIcon = param1;
         }
      }
      
      public function getmainmenueInventory() : Point
      {
         return this._mainmenueInventory;
      }
      
      public function set mainmenueInventory(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._mainmenueInventory = param1;
         }
      }
   }
}

