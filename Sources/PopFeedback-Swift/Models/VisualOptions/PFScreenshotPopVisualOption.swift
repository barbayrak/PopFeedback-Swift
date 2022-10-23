//
//  PFScreenshotPopVisualOption.swift
//  
//
//  Created by CH Kaan Bayrak on 13/10/2022.
//

import Foundation
import UIKit

public struct PFScreenshotPopVisualOption {
    
    let popupBackgroundColor : UIColor = UIColor(red: 177.0/255.0, green: 177.0/255.0, blue: 198.0/255.0, alpha: 1.0)
    let closeButtonColor : UIColor = UIColor.black
    
    //Bug Report Button Attributes
    let bugReportButtonBackgroundColor : UIColor = UIColor.white
    let bugReportButtonImage : UIImage = "PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMjkiIHZpZXdCb3g9IjAgMCAzMiAyOSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xOC4yNzE1IDAuMDAwOTQ3ODMzQzE4LjEzNTggLTAuMDAxNjM1NTMgMTguMDA5MiAwLjA2OTY2ODcgMTcuOTQxNyAwLjE4NzIxTDE2LjY3MyAyLjMyMjY0QzE2LjQ0OCAyLjI5MTkgMTYuMjE4NyAyLjI3NTg4IDE1Ljk4NTQgMi4yNzU4OEMxNS43NjA3IDIuMjc1ODggMTUuNTM5NCAyLjI5MDg2IDE1LjMyMjMgMi4zMTkyOEwxNC4wNTkyIDAuMTg3NzU0VjAuMTg3NDk1QzE0LjAwOTIgMC4xMDMwMjEgMTMuOTI3MiAwLjA0MTUzNTggMTMuODMxNyAwLjAxNjk5MzFDMTMuNzM2MiAtMC4wMDc1NDk1MiAxMy42MzQ4IDAuMDA2NjU5NDcgMTMuNTQ5NyAwLjA1Njc3NzFDMTMuNDY0OSAwLjEwNjYzNyAxMy40MDMxIDAuMTg4MDE1IDEzLjM3ODcgMC4yODMwODRDMTMuMzU0MSAwLjM3ODQxMSAxMy4zNjgzIDAuNDc5NDI1IDEzLjQxODQgMC41NjM4OTlMMTQuNTU1IDIuNDgyMzRDMTIuNDg1NyAzLjA5NTEyIDEwLjk2MDcgNS4wMDE0MiAxMC44OTkyIDcuMjY2MjdDOS44OTQ1OCA3Ljc3NTQ2IDguOTc0ODIgOC40MzAxMSA4LjE2NzQzIDkuMjAzODNMNS4yMTY0NiA2LjI2NTQ1QzUuMTQ3MTggNi4xOTQxNSA1LjA1MTk3IDYuMTUzNTkgNC45NTIzNCA2LjE1MjgyQzQuODUyNDUgNi4xNTIwNCA0Ljc1NjcyIDYuMTkxMzEgNC42ODY0IDYuMjYxMzJDNC42MTU4MyA2LjMzMTU5IDQuNTc2NjYgNi40MjY5MiA0LjU3NzQ0IDYuNTI2MTJDNC41NzgyMiA2LjYyNTMyIDQuNjE4OTUgNi43MjAxMyA0LjY5MDU2IDYuNzg5MzdMNy42NDg3NyA5LjczNDk1QzUuODQ4NSAxMS42OTc4IDQuNzE5MTIgMTQuMjk1OSA0LjYyOTA1IDE3LjE1NjZIMC4zNzg1MzNWMTcuMTU2M0MwLjI3ODY0NiAxNy4xNTQ1IDAuMTgyMzkyIDE3LjE5MyAwLjExMTMwNCAxNy4yNjI1QzAuMDQwMjE2NyAxNy4zMzIzIDAgMTcuNDI3MyAwIDE3LjUyNjhDMCAxNy42MjYgMC4wNDAyMTQ3IDE3LjcyMTMgMC4xMTEzMDQgMTcuNzkwOEMwLjE4MjM5MiAxNy44NjA2IDAuMjc4NjQ2IDE3Ljg5ODggMC4zNzg1MzMgMTcuODk3SDQuNjI5MDVDNC43MTkwOCAyMC43NTc5IDUuODQ4NDMgMjMuMzU2IDcuNjQ4NzcgMjUuMzE4N0w0LjY5MDU2IDI4LjI2NDJDNC42MTg2OSAyOC4zMzMyIDQuNTc3OTYgMjguNDI4IDQuNTc2OTIgMjguNTI3MkM0LjU3NjE0IDI4LjYyNjcgNC42MTUzMiAyOC43MjIzIDQuNjg1ODkgMjguNzkyM0M0Ljc1NjQ2IDI4Ljg2MjYgNC44NTI0NSAyOC45MDE4IDQuOTUyMDggMjguOTAwOEM1LjA1MTk3IDI4LjkgNS4xNDcxOCAyOC44NTk1IDUuMjE2NDYgMjguNzg3OUw4LjE2NzQzIDI1Ljg0OTVDMTAuMjA0NiAyNy44MDEzIDEyLjk1NjUgMjkgMTUuOTg0OSAyOUMxOS4wMjIgMjkgMjEuNzgwNyAyNy43OTYxIDIzLjgxOTYgMjUuODM2NkwyNi43ODM1IDI4Ljc4NzlIMjYuNzgzOEMyNi44NTMxIDI4Ljg1OTUgMjYuOTQ4MyAyOC45IDI3LjA0NzkgMjguOTAwOEMyNy4xNDc4IDI4LjkwMTggMjcuMjQzOCAyOC44NjI2IDI3LjMxNDEgMjguNzkyM0MyNy4zODQ3IDI4LjcyMjMgMjcuNDIzOSAyOC42MjY3IDI3LjQyMzEgMjguNTI3MkMyNy40MjIzIDI4LjQyOCAyNy4zODEzIDI4LjMzMzIgMjcuMzA5NyAyOC4yNjQyTDI0LjMzNzcgMjUuMzA1QzI2LjEzMSAyMy4zNDM5IDI3LjI1NTUgMjAuNzUxIDI3LjM0NTIgMTcuODk2NUgzMS42MjE1QzMxLjcyMTQgMTcuODk4NCAzMS44MTc2IDE3Ljg2MDEgMzEuODg4NyAxNy43OTA0QzMxLjk1OTggMTcuNzIwOSAzMiAxNy42MjU1IDMyIDE3LjUyNjNDMzIgMTcuNDI2OSAzMS45NTk4IDE3LjMzMTggMzEuODg4NyAxNy4yNjIxQzMxLjgxNzYgMTcuMTkyNiAzMS43MjE0IDE3LjE1NDEgMzEuNjIxNSAxNy4xNTU5SDI3LjM0NTJDMjcuMjU1MiAxNC4zMDE4IDI2LjEzMSAxMS43MDkxIDI0LjMzNzcgOS43NDc0NUwyNy4zMDk3IDYuNzg4MThWNi43ODg0NEMyNy4zODEzIDYuNzE5MiAyNy40MjIgNi42MjQzOSAyNy40MjI4IDYuNTI1MTlDMjcuNDIzNiA2LjQyNTk5IDI3LjM4NDIgNi4zMzA2NiAyNy4zMTM5IDYuMjYwMzlDMjcuMjQzMyA2LjE5MDM4IDI3LjE0NzYgNi4xNTExMiAyNy4wNDc5IDYuMTUxODlDMjYuOTQ4MyA2LjE1MjY3IDI2Ljg1MzEgNi4xOTMyMyAyNi43ODM4IDYuMjY0NTNMMjMuODE5OSA5LjIxNThDMjMuMDA4NiA4LjQzNTg3IDIyLjA4MjkgNy43NzYzIDIxLjA3MTMgNy4yNjQyOUMyMS4wMDk1IDUuMDA3OTYgMTkuNDk3MiAzLjEwNzU4IDE3LjQzODMgMi40ODgwOUwxOC41ODE3IDAuNTYzNDM3VjAuNTYzMTc4QzE4LjY1MDkgMC40NTAwMjggMTguNjU0MyAwLjMwODQ1MyAxOC41OTAyIDAuMTkyMjAxQzE4LjUyNjEgMC4wNzU2OTE0IDE4LjQwNDQgMC4wMDIzMjEzMyAxOC4yNzExIDBMMTguMjcxNSAwLjAwMDk0NzgzM1pNMTUuOTg1MiAzLjAxNjU3QzE4LjIyMjQgMy4wMTY1NyAyMC4wNTg1IDQuNzE0OTEgMjAuMzAxOSA2LjkxMTU4QzE4Ljk3MDkgNi4zNTg5OSAxNy41MTM0IDYuMDUzNjEgMTUuOTg1MiA2LjA1MzYxQzE0LjQ1NyA2LjA1MzYxIDEyLjk5OTggNi4zNTk0OSAxMS42Njg1IDYuOTEyNTdDMTEuOTEyMiA0LjcxNTkgMTMuNzUxMyAzLjAxNjgzIDE1Ljk4NTIgMy4wMTY4M1YzLjAxNjU3Wk0xNS45ODUyIDYuNzk0MjZDMjEuODU1MiA2Ljc5NDI2IDI2LjYwODIgMTEuNTkxMyAyNi42MDgyIDE3LjUyNzNDMjYuNjA4MiAyMy4zMzcxIDIyLjA1NDkgMjguMDU1MyAxNi4zNTcxIDI4LjI1M1YxMi4xMTI4QzE2LjM1ODcgMTIuMDEzOSAxNi4zMiAxMS45MTgzIDE2LjI1MDIgMTEuODQ3OEMxNi4xODAyIDExLjc3NyAxNi4wODQ3IDExLjczNzIgMTUuOTg1NCAxMS43MzcyQzE1Ljg4NTcgMTEuNzM3MiAxNS43OTAyIDExLjc3NyAxNS43MjA1IDExLjg0NzhDMTUuNjUwNCAxMS45MTgzIDE1LjYxMiAxMi4wMTM5IDE1LjYxMzMgMTIuMTEyOFYyOC4yNTNDOS45MTk0NCAyOC4wNTUxIDUuMzY2MjUgMjMuMzM3MSA1LjM2NjI1IDE3LjUyNzNDNS4zNjYyNSAxMS41OTE0IDEwLjExOTEgNi43OTQyNiAxNS45ODUyIDYuNzk0MjZIMTUuOTg1MloiIGZpbGw9ImJsYWNrIi8+Cjwvc3ZnPgo=".convertBase64StringToImage()
    let bugReportButtonTextColor : UIColor = UIColor.black
    let bugReportButtonText : String = "Bug Report"
    
    //Feedback Button Attributes
    let feedbackButtonBackgroundColor : UIColor = UIColor.white
    let feedbackButtonImage : UIImage = "PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyOCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIzLjQ2MTkgMEg0LjM1NjkzQzEuOTU0NzQgMCAwIDEuOTU1MDMgMCA0LjM1NjkzVjE1LjE4MzJDMCAxNy41MDQ5IDEuODI1MTUgMTkuNDA4MiA0LjExNjczIDE5LjUzNDhWMjMuNDYzOUM0LjExNjczIDIzLjY3NjIgNC4yNDIwOSAyMy44NjkyIDQuNDM4NSAyMy45NTUxQzQuNTA3IDIzLjk4NTIgNC41ODAwNSAyNCA0LjY1MzEgMjRDNC43ODQ5OSAyNCA0LjkxNjg4IDIzLjk1MDUgNS4wMTc3OSAyMy44NTYyTDkuNjc4MzEgMTkuNTQxSDIzLjQ2MzNDMjUuODY1NSAxOS41NDEgMjcuODIwMyAxNy41ODcxIDI3LjgyMDMgMTUuMTg0MVY0LjM1NzA1QzI3LjgyMDMgMS45NTUxNSAyNS44NjQgMC4wMDAxMTYwMyAyMy40NjIyIDAuMDAwMTE2MDNMMjMuNDYxOSAwWk0yNi43NDc1IDE1LjE4MzZDMjYuNzQ3NSAxNi45OTQ4IDI1LjI3NCAxOC40Njg0IDIzLjQ2MjcgMTguNDY4NEg5LjQ2NjcxQzkuMzMxNjkgMTguNDY4NCA5LjIwMTggMTguNTE5OCA5LjEwMjAzIDE4LjYxMjJMNS4xODc5NiAyMi4yMzY3VjE5LjAwNDVDNS4xODc5NiAxOC43MDg2IDQuOTQ3NzcgMTguNDY4NCA0LjY1MTg3IDE4LjQ2ODRINC4zNTcxQzIuNTQ1ODUgMTguNDY4NCAxLjA3MjMyIDE2Ljk5NDkgMS4wNzIzMiAxNS4xODM2VjQuMzU2NkMxLjA3MjMyIDIuNTQ2NTIgMi41NDU4NSAxLjA3MTgyIDQuMzU3MSAxLjA3MTgySDIzLjQ2MjFDMjUuMjczNCAxLjA3MTgyIDI2Ljc0NjkgMi41NDYyMiAyNi43NDY5IDQuMzU2NkwyNi43NDY2IDE1LjE4MzZMMjYuNzQ3NSAxNS4xODM2WiIgZmlsbD0iYmxhY2siLz4KPHBhdGggZD0iTTEwLjk1MDQgNi4zMTk4MkMxMC45NTA0IDUuMTI5NDIgOS45ODE5MSA0LjE1OSA4Ljc5MDY0IDQuMTU5QzcuNTk5MzcgNC4xNTkgNi42Mjk4MiA1LjEyODI2IDYuNjI5ODIgNi4zMTk4MkM2LjYyOTgyIDcuNTExMDkgNy41OTkwOCA4LjQ4MDY0IDguNzkwNjQgOC40ODA2NEM5Ljk4MjIgOC40ODA2NCAxMC45NTA0IDcuNTExMzggMTAuOTUwNCA2LjMxOTgyWk03LjcwMzQzIDYuMzE5ODJDNy43MDM0MyA1LjcxOTIgOC4xOTE0OCA1LjIzMTQ0IDguNzkxODEgNS4yMzE0NEM5LjM5MjQyIDUuMjMxNDQgOS44NzkwMiA1LjcxOTQ5IDkuODc5MDIgNi4zMTk4MkM5Ljg3OTAyIDYuOTIwNDMgOS4zOTIxMSA3LjQwODIgOC43OTE4MSA3LjQwODJDOC4xOTExOSA3LjQwODQ4IDcuNzAzNDMgNi45MjA0MyA3LjcwMzQzIDYuMzE5ODJaIiBmaWxsPSJibGFjayIvPgo8cGF0aCBkPSJNMTkuMDI2MSA0LjE1OTM2QzE3LjgzNTcgNC4xNTkzNiAxNi44NjYzIDUuMTI4NjIgMTYuODY2MyA2LjMyMDE4QzE2Ljg2NjMgNy41MTE0NSAxNy44MzQ4IDguNDgxIDE5LjAyNjEgOC40ODFDMjAuMjE3MyA4LjQ4MSAyMS4xODY5IDcuNTEyNTUgMjEuMTg2OSA2LjMyMDE4QzIxLjE4NjkgNS4xMjk3OSAyMC4yMTczIDQuMTU5MzYgMTkuMDI2MSA0LjE1OTM2Wk0xOS4wMjYxIDcuNDA4NTZDMTguNDI1NCA3LjQwODU2IDE3LjkzODggNi45MjA1MSAxNy45Mzg4IDYuMzIwMThDMTcuOTM4OCA1LjcxOTU3IDE4LjQyNTggNS4yMzE4MSAxOS4wMjYxIDUuMjMxODFDMTkuNjI2NyA1LjIzMTgxIDIwLjExNDQgNS43MTk4NSAyMC4xMTQ0IDYuMzIwMThDMjAuMTE0NCA2LjkyMDUxIDE5LjYyNjcgNy40MDg1NiAxOS4wMjYxIDcuNDA4NTZaIiBmaWxsPSJibGFjayIvPgo8cGF0aCBkPSJNMTguNDcyMyAxMy4wODk0QzE1Ljk1NjQgMTUuNjA1MiAxMS44NjMzIDE1LjYwNTIgOS4zNDY1NyAxMy4wODk0QzkuMTM3MzcgMTIuODgwMSA4Ljc5NzQxIDEyLjg4MDEgOC41ODg0OCAxMy4wODk0QzguMzc5MjggMTMuMjk4NiA4LjM3OTI4IDEzLjYzODUgOC41ODg0OCAxMy44NDc0QzEwLjA1NTUgMTUuMzE0NCAxMS45ODI0IDE2LjA0NzggMTMuOTA5NiAxNi4wNDc4QzE1LjgzNjUgMTYuMDQ3OCAxNy43NjM3IDE1LjMxNDQgMTkuMjMwNyAxMy44NDc0QzE5LjQzOTkgMTMuNjM4MiAxOS40Mzk5IDEzLjI5ODMgMTkuMjMwNyAxMy4wODk0QzE5LjAyMTIgMTIuODgwMSAxOC42ODEyIDEyLjg3OTMgMTguNDcyMyAxMy4wODk0WiIgZmlsbD0iYmxhY2siLz4KPC9zdmc+Cg==".convertBase64StringToImage()
    let feedbackButtonTextColor : UIColor = UIColor.black
    let feedbackButtonText : String = "Feedback"
    
    //Share Button Attributes
    let shareButtonBackgroundColor : UIColor = UIColor.white
    let shareButtonImage : UIImage = "PHN2ZyB3aWR0aD0iMjUiIGhlaWdodD0iMzEiIHZpZXdCb3g9IjAgMCAyNSAzMSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0wLjM1OTc1IDEzLjAwNDFDMC4yNjQ0NjcgMTMuMDAzOCAwLjE3Mjk2MyAxMy4wNDIxIDAuMTA1MzM1IDEzLjEwOTlDMC4wMzc5NTg3IDEzLjE3NzYgMCAxMy4yNjk2IDAgMTMuMzY1NFYzMC42Mzg1QzAgMzAuNzM0NSAwLjAzNzk2MTMgMzAuODI2NSAwLjEwNTMzNSAzMC44OTQyQzAuMTcyOTYzIDMwLjk2MiAwLjI2NDQ3NCAzMSAwLjM1OTc1IDMxSDI0LjE0NjZDMjQuMjQxOSAzMSAyNC4zMzM0IDMwLjk2MiAyNC40MDEgMzAuODk0MkMyNC40Njg0IDMwLjgyNjUgMjQuNTA2MyAzMC43MzQ1IDI0LjUwNjMgMzAuNjM4NVYxMy4zNjU0QzI0LjUwNjMgMTMuMjY5NiAyNC40Njg0IDEzLjE3NzYgMjQuNDAxIDEzLjEwOTlDMjQuMzMzNCAxMy4wNDIgMjQuMjQxOCAxMy4wMDM4IDI0LjE0NjYgMTMuMDA0MUgxNC41OTc3QzE0LjM5OTEgMTMuMDA0MSAxNC4yMzggMTMuMTY1NyAxNC4yMzggMTMuMzY1NEMxNC4yMzggMTMuNTY1MiAxNC4zOTkxIDEzLjcyNjkgMTQuNTk3NyAxMy43MjY5SDIzLjc4NjhWMzAuMjc3MkgwLjcxOTUxMlYxMy43MjY5SDkuOTM2MjZDMTAuMTM1MSAxMy43MjY5IDEwLjI5NiAxMy41NjUyIDEwLjI5NiAxMy4zNjU0QzEwLjI5NiAxMy4xNjU3IDEwLjEzNTEgMTMuMDA0MSA5LjkzNjI2IDEzLjAwNDFIMC4zNTk3NVoiIGZpbGw9ImJsYWNrIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIuMjIxNiAwLjAwMDM3NzEyM0MxMi4xMzU0IDAuMDA5Njc4ODMgMTIuMDU1NCAwLjA0OTY1MTEgMTEuOTk2MyAwLjExMzAwNEw1LjE4MjA4IDcuMTk2OTJDNS4xMDQxNSA3LjI2MzA0IDUuMDU3ODkgNy4zNTkwNyA1LjA1NDg3IDcuNDYxMTRDNS4wNTE2IDcuNTYzMjEgNS4wOTIwOCA3LjY2MjAxIDUuMTY1OTkgNy43MzI0QzUuMjM5NjUgNy44MDMwNSA1LjMzOTk2IDcuODM4OTkgNS40NDIwMyA3LjgzMTQ1QzUuNTQzODUgNy44MjM5MSA1LjYzNzYyIDcuNzczMzggNS43MDAyMiA3LjY5MjY5TDExLjg5NDcgMS4yNTA0MlYxNy43MTY1QzExLjg5MzIgMTcuODEyOCAxMS45MzA3IDE3LjkwNTggMTEuOTk4MyAxNy45NzQ0QzEyLjA2NjIgMTguMDQzMyAxMi4xNTg3IDE4LjA4MiAxMi4yNTUgMTguMDgyQzEyLjM1MTUgMTguMDgyIDEyLjQ0NCAxOC4wNDMzIDEyLjUxMTYgMTcuOTc0NEMxMi41Nzk1IDE3LjkwNTggMTIuNjE2NyAxNy44MTI4IDEyLjYxNTUgMTcuNzE2NVYxLjI1MDQyTDE4LjgyMTMgNy42OTI2OUMxOC44ODM2IDcuNzczMzggMTguOTc3NyA3LjgyMzkyIDE5LjA3OTUgNy44MzE0NUMxOS4xODEzIDcuODM5IDE5LjI4MTYgNy44MDMwNSAxOS4zNTUzIDcuNzMyNEMxOS40MjkyIDcuNjYxNzYgMTkuNDY5NiA3LjU2MzIxIDE5LjQ2NjYgNy40NjExNEMxOS40NjM0IDcuMzU5MDggMTkuNDE3NCA3LjI2MzA0IDE5LjMzOTQgNy4xOTY5MkwxMi41MTQyIDAuMTEzMDA0QzEyLjQ0NjggMC4wNDE2MDUgMTIuMzUzMSAwLjAwMTEzMDEyIDEyLjI1NSAwLjAwMDM3NzEyM0MxMi4yNDM3IC0wLjAwMDEyNTcwOCAxMi4yMzI3IC0wLjAwMDEyNTcwOCAxMi4yMjEzIDAuMDAwMzc3MTIzSDEyLjIyMTZaIiBmaWxsPSJibGFjayIvPgo8L3N2Zz4K".convertBase64StringToImage()
    let shareButtonTextColor : UIColor = UIColor.black
    let shareButtonText : String = "Share"
    
}
